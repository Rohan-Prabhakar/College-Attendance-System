(function(global, doc){

    if (!localStorage.attendance) {
        console.log('Creating initial attendance records...');
        let appModel = {
            students: [
                {name: 'Slappy the Frog', days: [] },
                {name: 'Lilly the Lizard', days: [] },
                {name: 'Paulrus the Walrus', days: [] },
                {name: 'Gregory the Goat', days: [] },
                {name: 'Adam the Anaconda', days: [] }
            ],
        };     
        function getRandom() {
            return (Math.random() >= 0.5);
        }
        for (student of appModel.students) {
            for (var i = 0; i <= 11; i++) {
                student.days.push(getRandom());
            }            
        }
        localStorage.attendance = JSON.stringify(appModel);
    }
   
    /**
     * Small LocalStorage wrapper to simulate latency while
     * retrieving the data
     */
    const ls = {
        getAsync: function () {
            return new Promise( (resolve, reject) => {
                const timer = setTimeout(_ => {
                    clearTimeout(timer);
                    return resolve(JSON.parse(localStorage.attendance));
                }, 2000);
            });
        },
        save: function (model) {
            localStorage.attendance = JSON.stringify(model);
        }
    };
    
    const attendanceTableView = {
        templateRow: `
            <td class="name-col">{StudentName}</td>
            <td class ="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input  type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="attend-col"><input type="checkbox"></td>
            <td class="missed-col">{missedCount}</td> 
        `,

        init: function(ctrl) {
            this.ctrl = ctrl;
            this.view = doc.querySelector('.attendance-view');
            
        },
        
        buildTable: function (studentList) {
            const fragment = doc.createElement('table');
            for(student of studentList) {
                const rowFrag = doc.createElement('tr');
                rowFrag.setAttribute('student-key', student.name);
                rowFrag.classList.add('student');
                rowFrag.innerHTML = this.templateRow;
                
                rowFrag.querySelector('.name-col').innerHTML = student.name;

                let missedCount = 0;
                rowFrag.querySelectorAll('.attend-col').forEach(function(item, index) {
                    item.setAttribute("style","color:red;")
                    item.setAttribute('day-id', index);
                    if (student.days[index]) {
                        item.querySelector('input[type=checkbox]').setAttribute('checked', 'checked');
                    } else {
                        item.querySelector('input[type=checkbox]').removeAttribute('checked');
                        missedCount++;
                        
                    }

                });
                //Setting up the missed days counter value
                rowFrag.querySelector('.missed-col').textContent = missedCount;

                fragment.appendChild(rowFrag);
            }
            this.view.querySelector('tbody').innerHTML = fragment.innerHTML;            
        },
        applyTableBehaviour: function () {
            function getParent(el, parentNodeType) {
                let currNode = el.parentNode;
                while( currNode.nodeName.toUpperCase() !==  parentNodeType) {
                    currNode = currNode.parentNode;
                }
                return currNode;
            }
            const onClick = e => {
                const cb = e.target;
                //Ensuring to interact only with checkbox elements
                if(cb.type !== "checkbox") return;
                this.ctrl.setDayAndRenderTable({
                    studentKey: getParent(cb, 'TR').getAttribute('student-key'), 
                    dayId: getParent(cb, 'TD').getAttribute('day-id'), 
                    value: cb.checked
                });
            }
            const rows = this.view.querySelector('tbody');
            rows.addEventListener('click', onClick);
        },
        render: function (studentList) {
            this.buildTable(studentList);
            this.applyTableBehaviour();
        }
    };

    
    const AppCtrl = {
        init: function() {
            this.getModelAsync()
                    .then( dataModel =>{
                        this.dataModel = dataModel;
                        attendanceTableView.init(this);
                        attendanceTableView.render(dataModel.students);
                    });
        },
        getModelAsync: function () {
            return ls.getAsync();
        },
        getStudentById: function (studentId) {
            for (let index = 0; index < this.dataModel.students.length; index++) {
                let student = this.dataModel.students[index];
                if (student.name === studentId) return student;
            }
        },
        setDay: function({studentKey, dayId, value}) {
            console.log(studentKey, dayId, value);
            let student = this.getStudentById(studentKey);
            student.days[dayId] = value;
            ls.save(this.dataModel);
        },
        setDayAndRenderTable: function (data) {
            this.setDay(data);  
            attendanceTableView.buildTable(this.dataModel.students);            
        }
    }
 


    AppCtrl.init();

    item.querySelector('input[type=checkbox]').setAttribute("'style', 'background-color:green;'");

})(window, document);