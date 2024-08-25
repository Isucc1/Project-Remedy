if index == -1{
	index = (array_length(titleScreenOptions[subMenu]) - 1) ;
} else if index == (array_length(titleScreenOptions[subMenu])){
	index = 0
}
switch (array_length(titleScreenOptions[subMenu])){
	case 7:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}\n{6}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4), array_get(titleScreenOptions[subMenu], 5), array_get(titleScreenOptions[subMenu], 6)) break;
	case 6:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4), array_get(titleScreenOptions[subMenu], 5)) break;
	case 5:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4)) break;
	case 4:		menuText = string("{0}\n{1}\n{2}\n{3}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3)) break;
	case 3:		menuText = string("{0}\n{1}\n{2}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2)) break;
	case 2:		menuText = string("{0}\n{1}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1)) break;
	case 1:		menuText = string("{0}", array_get(titleScreenOptions[subMenu], 0)) break;
}

show_debug_message(index)