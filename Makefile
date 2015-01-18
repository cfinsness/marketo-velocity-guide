html:
	pandoc title_page.md \
	date_comparison.md \
	-o Velocity_Scripting_For_Marketo.html

clean:
	rm -f Velocity_Scripting_For_Marketo.html 
