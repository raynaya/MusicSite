$(document).ready(function () {
		$("#jqxMenu").jqxMenu({ width: '180', mode: 'vertical', theme: 'classic' });
            $("#jqxMenu").css('visibility', 'visible');
		$('#register').slideToggle();
		$('#registration').click(function(){ $('#register').slideToggle()});

            var theme = getTheme();
            $('#sendButton').jqxButton({ width: 60, height: 25, theme: theme });
            $('#acceptInput').jqxCheckBox({ width: 130, theme: theme });
            $('#sendButton').bind('click', function () {
                $('#testForm').jqxValidator('validate');
            });
            $("#ssnInput").jqxMaskedInput({ mask: '###-##-####', height: 22, theme: theme });
            $("#phoneInput").jqxMaskedInput({ mask: '(###)###-####', height: 22, theme: theme });
            $("#zipInput").jqxMaskedInput({ mask: '###-###', height: 22, theme: theme });
            $('.text-input').addClass('jqx-input');
            if (theme.length > 0) {
                $('.text-input').addClass('jqx-input-' + theme);
            }
            var date = new Date();
            date.setFullYear(2000, 0, 1);
            $('#birthInput').jqxDateTimeInput({ theme: theme, height: 22, value: $.jqx._jqxDateTimeInput.getDateTime(date) });
            $("#register").jqxExpander({ width: '300px', theme: theme, showArrow: false, toggleMode: 'none' });
            // initialize validator.
		$('#jqxMenu').bind('itemclick', function (event) {
                var args = event.args;
                //$('#Events').jqxPanel('prepend', '<div style="margin-top: 5px;">ItemClick: ' + $(args).text() + '</div>');
		
		document.getElementById('datacontainer').innerHTML="<div id='gridcontainer'></div>";
		url='beverages.txt';
		var source =
            {
                datatype: "json",
                datafields: [
                    { name: 'name' },
                    { name: 'type' },
                    { name: 'calories', type: 'int' },
                    { name: 'totalfat' },
                    { name: 'protein' },
                ],
                id: 'id',
                url: url
            };
            var dataAdapter = new $.jqx.dataAdapter(source);
            $("#gridcontainer").jqxGrid(
            {
                width: 670,
                source: dataAdapter,
                theme: theme,
                columnsresize: true,
                columns: [
                  { text: 'Name', datafield: 'name', width: 250 },
                  { text: 'Beverage Type', datafield: 'type', width: 250 },
                  { text: 'Calories', datafield: 'calories', width: 180 },
                  { text: 'Total Fat', datafield: 'totalfat', width: 120 },
                  { text: 'Protein', datafield: 'protein', minwidth: 120 }
              ]
            });
            });
	
	
});       