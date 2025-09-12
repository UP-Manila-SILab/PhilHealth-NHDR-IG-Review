document.addEventListener("DOMContentLoaded", function () {
    const table = document.querySelectorAll("table");
    if (table) {
        table.forEach(function(element, index){
            element.classList.add("display");
            new DataTable(element, {
                paging: true,
                pageLength: 25,
                language: {
                    lengthLabels: {
                        '-1': 'Display All'
                    }
                },
                lengthMenu: [25, 50, -1],
                searching: true,
                info: true,
                order: []
            });
        });
    }
});