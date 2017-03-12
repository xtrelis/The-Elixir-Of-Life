unit UnitGraphics;

interface

procedure backround();
procedure defeat();
procedure trophy();
procedure credits();
procedure castlepicture();
procedure cavepicture();
procedure forrestpicture();
procedure lakepicture();
procedure lakepicture1();
procedure villagepicture();
procedure sitemain();
procedure sitemain1();
procedure landscape();
procedure human();
procedure orc();
procedure undead();
procedure elf();
procedure warrior();
procedure mage();
procedure archer();
procedure priest();
procedure wolfpicture1();
procedure wolfpicture2();
procedure wolfpicture3();
procedure dragonpicture1();
procedure dragonpicture2();
procedure knightpicture1();
procedure knightpicture2();
procedure wizardpicture1();
procedure wizardpicture2();

implementation

uses Crt, SysUtils;

procedure backround();
	begin
		textcolor(green);
		writeln();
		writeln('          |ZZzz                 ;;                            ::');
		writeln('    |Zzz  |     |Zzz       ; :: o :: ;                    :: `:;;`::');
		writeln('   /_\ /\ | /\ /_\        o::\ :| ::o/::                 ` ::;;\`::\/');
		writeln('   |*|_||/_\||_|*|        :::o::o;::o:;                   :::\ ::::"`');
		writeln('   |.....|*|.....|     __  o :\:::/:: ;                   :`::\://::');
		writeln(' __~| .. !~! .. |~___ (~ \____ | |__ ; ____________      _____| |_____________');
		writeln(' .*.|____|_|____|.*. ("    )   | |   o             )~~~~(     |^|');
		writeln('                      ~~~~~   /" `\                ~) ~  ~(  / ^ \');
		writeln('                                                   )~  o<  ~~(');
		writeln('                                                )~~  ~   ~   ~~~(');
		writeln('                                             )~~    0< ~   0<   ~~(');
		writeln('------------------------------------------------------------------------------');
		textcolor(7);
		writeln();
	end;
	
	
procedure defeat();
	begin
		writeln('   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM');
		writeln('   MMMMMMMMMMMM        MMMMMMMMMMMM');
		writeln('   MMMMMMMMMM            MMMMMMMMMM');
		writeln('   MMMMMMMMM              MMMMMMMMM');
		writeln('   MMMMMMMM                MMMMMMMM    Δυστυχώς έχασες!! ');
		writeln('   MMMMMMM                 MMMMMMMM');
		writeln('   MMMMMMM                  MMMMMMM        Πάτησε <Enter> η μάχη ξαναρχίζει!');
		writeln('   MMMMMMM                  MMMMMMM');
		writeln('   MMMMMMM    MMM    MMM    MMMMMMM');
		writeln('   MMMMMMM   MMMMM   MMMM   MMMMMMM');
		writeln('   MMMMMMM   MMMMM   MMMM   MMMMMMM');
		writeln('   MMMMMMMM   MMMM M MMMM  MMMMMMMM');
		writeln('   MMVKMMMM        M        MMMMMMM');
		writeln('   MMMMMMMM       MMM      MMMMMMMM');
		writeln('   MMMMMMMMMMMM   MMM  MMMMMMMMMMMM');
		writeln('   MMMMMMMMMM MM       M  MMMMMMMMM');
		writeln('   MMMMMMMMMM  M M M M M MMMMMMMMMM');
		writeln('   MMMMMMMMMMM MMMMMMMMM MMMMMMMMMM');
		writeln('   MMMMMMMMMMM M MMMMM M MMMMMMMMMM');
		writeln('   MMMMMMMMMMM   M M M  MMMMMMMMMMM');
		writeln('   MMMMMMMMMMMM         MMMMMMMMMMM');
		writeln('   MMMMMMMMMMMMMM     MMMMMMMMMMMMM');
		writeln('   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM');
end;


procedure trophy();
	begin
		textcolor(14);
		writeln('              .-=========-.');
		writeln('              \!-=======-!/');
		writeln('              _|   .=.   |_');
		writeln('             ((|  {{1}}  |))');
		writeln('              \|   /|\   |/');
		writeln('               \__ !`! __/');
		writeln('                 _`) (`_');
		writeln('               _/_______\_');
		writeln('              /___________\');
		textcolor(7);
		writeln();
	end;


procedure credits();
	begin
		writeln(';                                  /   \');       
		writeln('; _                        )      ((   ))     (');
		writeln(';(@)                      /|\      ))_((     /|\');
		writeln(';|-|                     / | \    (/\|/\)   / | \                      (@)');
		writeln(';| | -------------------/--|-voV---\`|`/--Vov-|--\---------------------|-|');
		writeln(';|-|                         `^`   (o o)  `^`                          | |');
		writeln(';| |                               `\Y/`                               |-|');
		writeln(';|-| 	ΤΡΕΛΗΣ ΧΑΡΑΛΑΜΠΟΣ                             1ΙΤΕΠ01           | |');
		writeln(';| |                                                                   |-|');
		writeln(';|-|                             ΙΕΚ ΔΕΛΤΑ                             | |');
		writeln(';| |                               2015                                |-|');
		writeln(';|_|___________________________________________________________________| |');
		writeln(';(@)                l   /\ /        ( (       \ /\   l                `\|-|');
		writeln(';                   l /   V          \ \       V   \ l                  (@)');
		writeln(';                   l/               _) )_          \I');
		writeln(';                                    `\ /`');
	end;

	
procedure castlepicture();
	begin
		textcolor(4);
		write('                                  |ZZzz                                         ');
		textcolor(7);
		write('                                  |                                             ');
		textcolor(4);
		write('                    |ZZzz     ');
		textcolor(8);
		write('_  _');
		textcolor(7);
		write('|');
		textcolor(8);
		write('_  _         ');
		textcolor(4);
		write('|ZZzz                           ');
		textcolor(8);
		write('                    |        |;| |;| |;|        |                               ');
		write('                _  _|_  _    \\.    .  /    _  _|_ __                           ');
		write('               |;|_|;|_|;|    \\:. ,  /    |;|_|;|_|;|                          ');
		write('               \\..      /    ||;   . |    \\.    .  /                          ');
		write('                \\.  ,  /     ||:  .  |     \\:  .  /                           ');
		write('                 ||:   |_   _ ||_ . _ | _   _||:   |                            ');
		write('                 ||:  .|||_|;|_|;|_|;|_|;|_|;||:.  |                            ');
		write('                 ||:   ||.    .     .      . ||:  .|                            ');
		write('                 ||: . || .     . .   .  ,   ||:   |       \,/                  ');
		write('                 ||:   ||:  ,  ');
		textcolor(6);
		write('_______   ');
		textcolor(8);
		write('.   ||: , |            /`\             ');
		write('                 ||:   || .   ');
		textcolor(6);
		write('/+++++++\    ');
		textcolor(8);
		write('. ||:   |                            ');
		write('                 ||:   ||.    ');
		textcolor(6);
		write('|+++++++| ');
		textcolor(8);
		write('.    ||: . |                            ');
		write('              ');
		textcolor(2);
		write('__ ');
		textcolor(8);
		write('||: . ||: ,  ');
		textcolor(6);
		write('|+++++++|');
		textcolor(8);
		write('.  . _||_   |                            ');
		textcolor(2);
		write('     ____--`-    ');
		textcolor(8);
		write('|');
		textcolor(2);
		write('----__');
		textcolor(8);
		write('|.    ');
		textcolor(6);
		write('|+++++__|');
		textcolor(2);
		write('----~    ~`---,              ______      ');
		write('~-~-~--~                   ~---__|,--~"                  ~~----_____-~          ');
		writeln();
		textcolor(white);
	end;
	
	
procedure cavepicture();
	begin
		textcolor(brown);
		writeln('                         _/-\\');
		writeln('                        /     O');
		writeln('                  /\   /       \');
		writeln('                _/| \_/      _  \'); 
		writeln('               /     /     _/ \  \');
		writeln('            __/  ___/     /    \  )');
		writeln('           y       Λ     |      | |');
		writeln('          ,       / \   /       | |');
		writeln('         /        \  \  |        \(');
		writeln('        /             \|          | \');
		writeln('       ,___|_  _|-----`__ |-|- __|__,');
		writeln('      ._/ /                 \____/      \,');
		writeln('     /  \ \                  \```\        \,');
		writeln('    (__   _\                 |```|         L_,');
		writeln('    /   ./ /                  \```\       /  _\');
		writeln('   |   /  /                   |```|       \,   |');
		writeln('  /  (                       \```\       /  _/ \');
		writeln(' /_                           |```|           _,|');
		writeln('|                                                \');
		writeln();
		textcolor(white);
	end;
	
	
procedure forrestpicture();
	begin				
		textcolor(green);
		writeln('                 ,@@@@@@@,                                ,@@@@@@@,');
		writeln('         ,,,.   ,@@@@@@/@@,  .oo8888o.      ,,,.         ,@@@@@@/@@,');
		writeln('      ,&%%&%&&%,@@@@@/@@@@@@,8888\88/8o  ,&%%&%&&%,    ,@@@@@/@@@@@@,');
		writeln('     ,%&\%&&%&&%,@@@\@@@/@@@88\88888/88`,%&\%&&%&&%,    @@@@\@@@/@@@,');
		writeln('     %&&%&%&/%&&%@@\@@/ /@@@88888\88888`%&&%&%&/%&&%     @@@\@@/ /@@');
		writeln('     %&&%/ %&%%&&@@\ V /@@` `88\8 `/88` %&&%/ %&%%&&      @@\ V /@@`');
		writeln('     `&%\ ` /%&`    |.|        \ `|8`    `&%\ ` /%&`         |.|');
		textcolor(brown);
		writeln('         |o|        | |         | |          |o|             | |');
		writeln('         |.|        | |         | |          |.|             | |');
		textcolor(green);
		writeln('______\\/ ._\//_/__/  ,\_//__\\/.  \_//__/_\/ ._\///__\\/___/  ,\_____\///___');
		textcolor(7);
		writeln();
		textcolor(white);
end;


procedure lakepicture();
	begin
		textcolor(11);
		writeln('           A');             
		writeln('          /.\');       
		writeln('     <|  [""M#');      
		writeln('      A   | #');             
		writeln('     /.\ [""M#');             
		writeln('    [""M# | #  U"U#U');
		writeln('     | #  | #  \ .:/');
		writeln('     | #  | #___| #');
		writeln('     | "--"     .-"');
		writeln('   |"-"-"-"-"-#-#-##');
		writeln('   |     # ## ######');
		writeln('    \       .::::"/');
		writeln('     \      ::::"/');
		writeln('   :8a|    # # ##');
		writeln('   ::88a      ###');
		writeln('  ::::888a  8a ##::.');
		writeln('  ::::::888a88a[]::::...');
		textcolor(blue);
		writeln('::":::88::::888::Y88a______________________________________________________');
		writeln(':: ::::88a::::88a:Y88a                                  __---__-- __');
		writeln('" .: ::Y88a:::::8a:Y88a                            __----_-- -------_-__');
		writeln('  :" ::::8P::::::::::88aa.                   _ _- --  --_ --- __  --- __--');
		writeln();
		textcolor(7);
	end;
	
	
procedure lakepicture1();
	begin
		textcolor(11);
		writeln('           A');             
		writeln('          /.\');       
		writeln('     <|  [""M#');      
		writeln('      A   | #');             
		writeln('     /.\ [""M#');             
		write('    [""M# | #  U"U#U;                                ');
		textcolor(7);
		writeln('Μαγευτικό...');
		textcolor(11);
		write('     | #  | #  \ .:/                    ');
		textcolor(7);
		writeln('το κάστρο, στη μέση της λίμνης,');
		textcolor(11);
 		write('     | #  | #___| #                            ');
		textcolor(7);
		writeln('δίνει την εντύπωση πως αιωρείται');
		textcolor(11);
		write('     | "--"     .-"                                ');
		textcolor(7);
		writeln('στην επιφάνεια του νερού!');
		textcolor(11);
		writeln('   |"-"-"-"-"-#-#-##');
		writeln('   |     # ## ######');
		textcolor(11);
		writeln('    \       .::::"/');
		writeln('     \      ::::"/');
		writeln('   :8a|    # # ##');
		writeln('   ::88a      ###');
		writeln('  ::::888a  8a ##::.');
		writeln('  ::::::888a88a[]::::...');
		textcolor(blue);
		writeln('::":::88::::888::Y88a______________________________________________________');
		writeln(':: ::::88a::::88a:Y88a                                  __---__-- __');
		writeln('" .: ::Y88a:::::8a:Y88a                            __----_-- -------_-__');
		writeln('  :" ::::8P::::::::::88aa.                   _ _- --  --_ --- __  --- __--');
		writeln();
		textcolor(white);
	end;
	
	
procedure villagepicture();
	begin
		textcolor(7);
		writeln('  ~         ~~          __');
		textcolor(6);
		write('       _T');
		textcolor(7);
		writeln('      .,,.    ~--~ ^^');
		write(' ^^');   
		textcolor(6);
		writeln('   // \                 ~');
		write('      ][O]    ');
		textcolor(7);
		writeln('^^      ,-~ ~');
		textcolor(6);
		writeln('   /``-I_I         _II____');
		writeln('__/_  /   \ ______/ ``   /`\_,__');
		write('  | II--```` \,--:--..,_/,.-');
		textcolor(10);
			write('{ }');
		textcolor(6);
		writeln(',');
		write('; `/__\,.--`;|   |[] .-.| O');
		textcolor(10);
		writeln('{ _ }');
		textcolor(6);
		write(':` |  | []  -|   ``--:.;[,.`');
		textcolor(10);
		writeln('\,/');
		textcolor(6);
		write('`  |[]|,.--`` ``,   ``-,.');    
		textcolor(14);
		writeln('    |');
		textcolor(6);
		write('  ..    ..-``    ;       ``. ');
		textcolor(14);
		write('`');
		textcolor(7);
		writeln();
		textcolor(white);
	end;
	
	
procedure sitemain();
	begin
		textcolor(6); 				     
		write('                                 _                                              ');
		write('                       .-.      / \        _                                    ');
		write('           ^^         /   \    /^./\__   _/ \                                   ');
		write('         _        .--` /\_ \__/.      \ /    \  ^^  ___                         ');
		write('        / \_    _/ ^      \/  __  :`   /\/\  /\  __/   \                        ');
		write('       /    \  /    .`   _/  /  \   ^ /    \/  \/ .``\_/\                       ');
		write('      /\/\  /\/ :` __  ^/  ^/    `--./.`  ^  `-.\ _    _:\ _                    ');
		write('     /    \/  \  _/  \-` __/.` ^ _   \_   .`\   _/ \ .  __/ \                   ');
		write('   /\  .-   `. \/     \ / -.   _/ \ -. `_/   \ /    `._/  ^  \                  ');
		write('  /  `-.__ ^   / .-`.--`    . /    `--./ .-`  `-.  `-. `.  -  `.                ');
		write('@/        `.  / /      `-.   /  .-`   / .   .`   \    \  \  .-  \%              ');
		textcolor(2);
		write('@(88%@)@.');
		textcolor(blue);
		write('-_=_-=_-=_-=_-=_');
		textcolor(2);
		write('.8@% @%% @)&@&(88&&@&&8(');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write('%8)(8@%8 8%@)%%.............');
		write('@88:::&:.');
		textcolor(blue);
		write('~-_~~-~~_~-~_~-~~=');
		textcolor(2);
		write('.`(&8&&8::JGS:&`@(&%8%@%8%@');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write(')::&#@8::::::::::::::::`::::::8%`.');
		textcolor(1);
		write('=~~-.~~-.~~=..~');
		textcolor(2);
		write('`8::::::::::::8%@%8:::');
		textcolor(white);
		write('/_\');
		textcolor(brown);
		write('::::');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write('8:::::::::::::::::::::');
		write(' `:::::::::::::::::::::::::::::::::::::::::::::::::');
		textcolor(white);
		write('/_\/_\');
		textcolor(2);
		write(':::::::::::::::::::::::');
		textcolor(7);
		writeln();
		writeln('Ενώ περπατάς προς τον προορισμό σου, παρατηρείς το όμορφο τοπίο ...!');
		writeln();
		textcolor(white);
	end;


procedure sitemain1();
	begin
		textcolor(white); 				     
		write('       _   .      *     .        _      .                        *              ');
		write('   .  ((         .     .-.   *  / \        _           *                        ');
		write('       `   .          /   \ .  /^./\__ * _/ \    .                              ');
		write('         _        .--` /\_ \__/.      \ /    \      ___             *           ');
		write('     *  / \_ .  _/ ^      \/  __  :`   /\/\  /\  __/   \    .                   ');
		write('  .    /    \  /    .`   _/  /  \   ^ /    \/  \/ .``\_/\                       ');
		write('      /\/\  /\/ :` __  ^/  ^/    `--./.`  ^  `-.\ _    _:\ _               .    ');
		write('     /    \/  \  _/  \-` __/.` ^ _   \_   .`\   _/ \ .  __/ \                   ');
		write('   /\  .-   `. \/     \ / -.   _/ \ -. `_/   \ /    `._/  ^  \                  ');
		write('  /  `-.__ ^   / .-`.--`    . /    `--./ .-`  `-.  `-. `.  -  `.       .        ');
		write('@/        `.  / /      `-.   /  .-`   / .   .`   \    \  \  .-  \%              ');
		textcolor(2);
		write('@(88%@)@.');
		textcolor(blue);
		write('-_=_-=_-=_-=_-=_');
		textcolor(2);
		write('.8@% @%% @)&@&(88&&@&&8(');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write('%8)(8@%8 8%@)%%.............');
		write('@88:::&:.');
		textcolor(blue);
		write('~-_~~-~~_~-~_~-~~=');
		textcolor(2);
		write('.`(&8&&8::JGS:&`@(&%8%@%8%@');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write(')::&#@8::::::::::::::::`::::::8%`.');
		textcolor(1);
		write('=~~-.~~-.~~=..~');
		textcolor(2);
		write('`8::::::::::::8%@%8:::');
		textcolor(white);
		write('/_\');
		textcolor(brown);
		write('::::');
		textcolor(white);
		write('/_\');
		textcolor(2);
		write('8:::::::::::::::::::::');
		write(' `:::::::::::::::::::::::::::::::::::::::::::::::::');
		textcolor(white);
		write('/_\/_\');
		textcolor(2);
		write(':::::::::::::::::::::::');
		textcolor(7);
		writeln();
		writeln('Καθώς περπατάς στο φως του φεγγαριού, παρατηρείς πόσο ατέρια λάμπουν...!');
		writeln();
		textcolor(white);
	end;


procedure landscape();
	begin
		write('                _,_           +                   __                            ');
		write('                `,`                  /\          `. `.                          ');
		write('          .                        .`  \    +      "  |                         ');
		write('                                  /     \         /  .`         .               ');
		write('                       .`\      .`       \       `"`                            ');
		write('      +             .-`   `.   /          `.                                    ');
		write('            .     .`        \.`             \                                   ');
		write('               .-`           \               \   .-`"`-.      . +               ');
		write('           .`.`               \               \.`       `-.                     ');
		write('          /                    `.           .-`\           `-._                 ');
		write('        .`                       \       .-`                   `-.              ');
		write('                                                                  `-.           ');
		write('   .-------------------```````````````              _.--      .`                ');
		write('                                ___..         _.--``        .`                  ');
		write('                          --````             `            .`                    ');
		writeln();
		textcolor(white);
	end;
	
	
procedure human();
	begin
		textcolor(14);
		writeln('             __)),');
		writeln('            //_ _)');
		writeln('            ( "\"');
		writeln('             \_-/                  ΦΥΛΗ => Άνθρωποι');
		writeln('         ,---/  \---.');
		writeln('        /     - -    \');
		writeln('       /  \_. _|__,/  \');
		writeln('      /  )\        )\_ \');
		writeln('     / _/  (   |  ) /  /');
		writeln('    / |     (_____) | /');
		writeln('   /,/      /     \/ /,');
		textcolor(white);
		write('Οι περισσότεροι άνθρωποι είναι απόγονοι πρωτοπόρων, κατακτητών, εμπόρων, ταξιδιωτών, προσφύγων και γενικότερα όλων αυτών των ανθρώπων που βρίσκονται σε συνεχή κίνηση. ');
		write('Ως αποτέλεσμα, η ανθρώπινη γη να αποτελεί το σπίτι ενός μίγματος ατόμων με διαφορετικές πολιτισμικές, θρησκευτικές και πολιτικές απόψεις. ');
		write('Είτε ανοιχτόχρωμοι ή σκουρόχρωμοι, είτε επιδεικτικοί ή λιτοί, είτε πρωτόγονοι ή πολιτισμένοι, είτε ευσεβείς ή ασεβείς, οι άνθρωποι ουσιαστικά είναι αυτοί που ελέγχουν τα πράγματα.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure orc();
	begin
		textcolor(2);
		writeln('           _,.---""```````"-.');
		writeln('       ,-"`                  `--.');
		writeln('    ,-`                   __,-``,\');
		writeln('   /             _       /,"  ,|/ \');
		writeln(' ,"         ,""-<_`".    |  ," |   \');
		writeln('/          / _    `  `.  | / \ |\  |');
		writeln('|         (  |`"-,---, `"  \_|/ |  |           ΦΥΛΗ => Όρκς');
		writeln('|         |`  \  \|  /  __,    _ \ |');
		writeln('|         |    `._\,"  "    ,-`_\ \|');
		writeln('|         |        ,----      /|   )');
		writeln('\         \       / --.      {/   /|');
		writeln(' \         | |       `.\         / |');
		writeln('  \        / `-.                 | 0/');
		writeln('   `.     |     `-        _,--V`)\/');
		writeln('     `,   |           /``V_,.--`  \');
		writeln('      /`--|`._        `-/`         )');
		writeln('     /        `-.            _,.-:`');
		writeln('                 `-.____,.-:`');
		textcolor(white);
		write('Μακριά από τα γνωστά σύνορα, φυλές όπως βάρβαροι άνθρωποι και όρκς ζουν σε μια κάπως δύσκολη ισορροπία, αγωνίζονται σε περιόδους πολέμου και αναπτύσσουν το εμπόριο τους σε περιόδους ειρήνης. ');
		write('Τα όρκς κατάγονται από τις παραμεθόριες περιοχές τους Βασιλείου των Ανθρώπων. Πολλές φορές τυγχάνει κάποιο όρκ να έχει μεγαλώσει υπό την επίβλεψη πολιτισμένων ανθρώπων και συνεπώς να έχει εκτεθεί και στις δυο κουλτούρες από νωρίς. ');
		write('Κάποια όρκς, για διαφορετικούς λόγους το καθένα, αφήνουν την πατρίδα τους και ταξιδέψουν στην πολιτισμένη γη, φέρνοντας μαζί τους την επιμονή, το θάρρος και την ανδρεία τους.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure undead();
	begin
		textcolor(15);
		writeln('cgD                            __ _');
		writeln('|\(                          .:  Y :>,');
		writeln(' \ \                        / _   _   \');
		writeln('  \\\                       )(_) (_)(|}');
		writeln('   \\\                      {  4A   } /        ΦΥΛΗ => Αθάνατοι');
		writeln('    \\\                      \uLuJJ/\l');
		writeln('     \\\                     |3    p)/');
		writeln('      \\\___ __________      /nnm_n//');
		writeln('      c7___-__,__-)\,__)(".  \_>-<_/D');
		writeln('                 //V     \_"-._.__G G_c__.-__<")');
		writeln('                        <"-._>__-,G_.___)\   \7\');
		writeln('                       ("-.__.| \"<.__.-" )   \ \');
		writeln('                       |"-.__"\  |"-.__.-".\   \ \');
		writeln('                       ("-.__"". \"-.__.-".|    \_\');
		writeln('                       \"-.__""|!|"-.__.-".)     \ \');
		writeln('                        "-.__""\_|"-.__.-"./      \ l');
		writeln('                         ".__""">G>-.__.-">       .--,');
		write('Ένας αθάνατος είναι ένα ον της μυθολογίας, ένας θρύλος ή φαντασίας που έχει αποβιώσει, αλλά συμπεριφέρεται σαν ζωντανός. ');
		write('Κοινό παράδειγμα είναι ένα πτώμα που έχει επανέρθει στη ζωή. Κινούμενο με υπερφυσικές δυνάμεις το οποίο έχει πνεύμα, όπως ένας δαίμονας. ');
		write('Οι αθάνατοι μπορεί να είναι άυλοι σαν φαντάσματα, ή με σώμα, σαν βαμπίρ ή ζόμπι. ');
		write('Οι αθάνατοι έχουν υψηλές ανώτερες διεργασίες και χρειάζονται τις ζωές των υπόλοιπων όντων για να τραφούν.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure elf();
	begin
		textcolor(3);
		writeln('         ..-.--..');
		writeln('       ,`,`.-`.-.`.');
		writeln('      :.`,;`     `.\.');
		writeln('      ||//----,-.--\|              ΦΥΛΗ => Ξωτικά');
		writeln('    \`:|/-----`-"--||`/');
		writeln('     \\|:    |:`');
		writeln('      `||      \   |!');
		writeln('      |!|          ;|');
		writeln('      !||:.   --  /|!');
		writeln('     /||!||:.___.|!||\');
		writeln('    /|!|||!|    |!||!\\:.');
		writeln(' ,`//!||!||!`._.||!||,:\\\');
		writeln(': :: |!|||!| SSt|!||! |!::');
		writeln('| |! !||!|||`---!|!|| ||!|');
		writeln('| || |!|||!|    |!||! |!||');
		textcolor(white);
		write('Τα ξωτικά κυκλοφορούν ελεύθερα στα εδάφη των ανθρώπων, όντας ευπρόσδεκτα πάντα και παντού, παρ`όλα αυτά δεν νιώθουν πότε έτσι όπως όταν βρίσκονται στα δικά τους εδάφη. ');
		write('Είναι γνωστά για την ποίησή τους, τον χορό, το τραγούδι, τις λαϊκές παραδόσεις και τις μαγικές τέχνες. ');
		write('Τα ξωτικά αγαπούν τη φύση και τη φυσική ομορφιά. ');
		write('Όταν ο κίνδυνος απειλεί τα δάση τους, δηλαδή το σπίτι τους, τα ξωτικά αποκαλύπτουν μια πιο πολεμική πλευρά, επιδεικνύοντας τις ικανότητές τους στο σπαθί, στο τόξο και στη στρατηγική.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure warrior();
	begin
		textcolor(5);
		writeln('     ,   |\ ,__');
		writeln('     |\   \/   `.');
		writeln('     \ `-.:.     `\');
		writeln('      `-.__ `\=====|');
		writeln('         /=`"/   ^_\');
		writeln('       .:   /\   .=)                           Κατηγορία => Πολεμιστής');
		writeln('    .-"  ."|  "-(/_|');
		writeln('  ."  __(  \  ."`');
		writeln(' /_."`  `.  |`');
		writeln('            \ |');
		writeln('             |/');
		textcolor(white);
		write('Βγαλμένοι από τα παιδία των μαχών. Πάντα γενναίοι, κάποιες φορές ακόμα μέχρι και σε σημείο αφέλειας. Μια από τις πιο ισχυρές κλάσεις σε μάχες σώμα με σώμα. ');
		write('Όλοι οι πολεμιστές αποδεικνύονται σημαντικοί σύμμαχοι με αξία που μόνο στο πεδίο της μάχης μπορεί κάποιος να εκτιμήσει. ');
		write('Στους εχθρούς τους που είχαν να υπεροψία να τους υποτιμήσουν έχουν αποδείξει την πονηριά τους στην μάχη, την επινοητικότητα τους, την επιμονή τους  ακόμα και την αναλγησίας τους.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;


procedure mage();
	begin
		textcolor(1);
		writeln('                    ____');
		writeln('                  ."* *."');
		writeln('               __/_*_*(_');
		writeln('              / _______ \');
		writeln('             _\_)/___\(_/_');
		writeln('            / _((\- -/))_ \                    Κατηγορία => Μάγος');
		writeln('            \ \())(-)(()/ /');
		writeln('             \ \(((()))/ /');
		writeln('            / \ \)).))/ / \');
		writeln('           / _ \ - | - /_  \');
		writeln('          (   ( .;""";. ."  )');
		writeln('          _\"__ /    )\ __"/_');
		writeln('            \/  \   " /  \/');
		textcolor(white);
		write('Λίγα λόγια ακατανόητα και φευγαλέες κινήσεις έχουν περισσότερη δύναμη από ό, τι ένα πολεμικό τσεκούρι, ειδικά όταν οι λέξεις και οι χειρονομίες ανήκουν σε έναν Μάγο. ');
		write('Αυτές οι απλές χειρονομίες κάνουν τα μαγικά να φαίνεται εύκολο, αλλά στην πραγματικότητα αποτελούν μόνο ένα μικρό κομμάτι επίπονής προετοιμασίας που συμπεριλαμβάνει και εκπαίδευση και μελέτη. ');
		write('Οι μάγοι εξαρτάται από την εντατική μελέτη για τη δημιουργία κάθε μαγικού που θέλουν να χρησιμοποιήσουν. ');
		write('Εξετάζουν προσεχτικά σκονισμένους παλιούς τόμους, συζητούν περί μαγείας με τους συναδέλφους τους ενώ οι καλύτεροι αναλαμβάνουν για πρακτική, νέους Μάγους.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;


procedure archer();
	begin
		textcolor(6);
		writeln('       -\                                `|.');
		writeln('         \\                            /  |.');
		writeln('           \\                        /     `|.');
		writeln('            \|                     /        |.');
		writeln('              \#####\            /          |.');
		writeln('          ==###########>       /            |\        Κατηγορία => Τοξότης');
		writeln('           \##==      \      /              ||');
		writeln('      ______ =       =|____/__              ||');
		writeln('  ,--` ,----`-,__ ___/`  --,-`-=============##==========>');
		writeln(' \              `        ##__ __ __,--,__,=##,__');
		writeln('  `,    __==    ___,-,__,--`#` ==`  `-`   | ##,-/');
		writeln('    `-,____,---`       \####  \ __ ____,--\_##,/');
		writeln('        #_              |##   _\,           ##');
		writeln('         #              ]===--== \          ||');
		writeln('         #,             ]          \        ||');
		writeln('          #_            |            \      |/');
		writeln('           ##_       __/`              \    |.');
		writeln('                                         \ |.');
		textcolor(white);
		write('Οι τοξότες είναι δεινοί με τα βέλη τους. Μπορούν από μεγάλες αποστάσεις να σου προξενήσουν σημαντική βλάβη, ενώ οι καλύτεροι από αυτούς μπορούν μέχρι και να σκοτώσουν με ένα βέλος. ');
		write('Οι τοξότες μπορεί να είναι από εξαιρετικοί αμυντική γραμμή μέχρι και θανατηφόρο επιθετικό όπλο. ');
		write('Αρκετοί τοξότες βρίσκονται στη Βασιλική Φρουρά των ανθρώπων ενώ οι καλύτεροι τοξοβόλοι είναι ξωτικά. ');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure priest();
	begin
		textcolor(11);
		writeln('  ΛΛ');
		writeln('<(^^)>    ** *');
		writeln('  ||      __X_'); 
		writeln('  ||     ( ___\');
		writeln('  ||     |:  \\');
		writeln('  ||   ___)..:/_#__,                           Κατηγορία => Ιερέας');
		writeln(' (X|) (|+(____)+\ _)');
		writeln('  o|_\/>> + + + << \');
		writeln('    |:\/|+ + + +| \_\<');
		writeln('    \./  XXXXXX.  (o_)_');
		writeln('        /+ + + |   \:|');
		textcolor(white);
		write('Η συμπόνια να επιδιώξει το καλό, η θέληση να υποστηρίξω το νόμο και η δύναμη να νικήσει το κακό - αυτά είναι τα τρία όπλα του Κληρικού. ');
		write('Λίγοι έχουν την αγνότητα και την αφοσίωση που χρειάζεται για να περπατήσουν το μονοπάτι του Κληρικού, αλλά αυτοί οι λίγοι ανταμείβονται με τη δύναμη να προστατεύουν, να θεραπεύουν, και να πατάσσουν το κακό. ');
		write('Σε μια εποχή δολοπλόκων μάγων, ανίερων κληρικών, αιμοδιψών δράκων, και υποχθόνιων πολεμιστών, ο Κληρικός είναι η τελική ελπίδα, που δεν μπορεί να σβήσει.');
		writeln();
		writeln('Πάτησε <Enter> για συνεχεια.':55);
	end;
	
	
procedure wolfpicture1();
	begin
		textcolor(8);
		writeln('                          ,     ,');
		writeln('                          |\---/|');
		writeln('                         /  a a |');
		writeln('                    __.-"|  / \ /');
		writeln('           __ ___.-"        ._O|');
		writeln('        .-"  "        :      _/');
		writeln('       / ,    .        .     |');
		writeln('      :  ;    :        :   _/');
		writeln('      |  |   ."     __:   /');
		writeln('      |  :   /"----"| \  |');
		writeln('      \  |\  |      | /| |');
		writeln('       `.,| /       || \ |');
		writeln('       | /||        `.L \\_');
		writeln('       || ||             "-"');
		writeln('       "-""-"');
		textcolor(7);
		writeln('"`""``"````"`""``"````"`""``"````"""``````""`""```````""`"`"```""``""');
		writeln();
		textcolor(white);
	end;
	
	
procedure wolfpicture2();
	begin
		textcolor(8);
		writeln('                  ,');
		writeln('               ,,/( ,,,,,,,,,,___,,');
		writeln('              )b`);       ,,,     "`,_,');
		writeln('             /(     /                   `,');
		writeln('            L/7_/\,,|            /        \');
		writeln('             ,`      `,  \     ,|          \');
		writeln('              ,      /  /``````||      |\,  \__,)))');
		writeln('                    /  / |      \\     \  \,,,,,,/');
		writeln('                   |  /  |       \\   )/');
		writeln('                   \ (|  )     ,,//   /');
		writeln('                    `_)_/     ((___/""');
		textcolor(white);
		writeln('"`""``"````"`""``"````"`""``"````"""``````""`""```````""`"`"```""``""');
		writeln();
		textcolor(white);
	end;
	
	
procedure wolfpicture3();
	begin
		textcolor(7);
		writeln('                            .d$$b  ');
		writeln('                          ." TO$;\ ');
		writeln('                         /  : TP._;');
		writeln('                        / _.;  :Tb|');
		writeln('                       /   /   ;j$j');
		writeln('                   _.-"       d$$$$ ');
		writeln('                 ." ..       d$$$$;');
		writeln('                /  /P`      d$$$$P. |\                ,^.     |/\/\|');
		writeln('               /   "      .d$$$P" |\^"l               |||     |`||`|');
		writeln('             ."           `T$P^"""""  :               |||     |=||=|');
		writeln('         ._."      _.`                ;               |||   .`._||_.`-.');
		writeln('      `-.-".-`-` ._.       _.-"    .-"                ===_ /\|  "`"  |/');
		writeln('    `.-" _____  ._              .-"                    E]_|\/ \--|-|````|');
		writeln('   -(.g$$$$$$$b.              .`                       O  ``  `=[:]| T  |');
		writeln('     ""^^T$$$P^)            .(:                               /""""|  F |');
		writeln('       _/  -"  /.`         /:/;                              /"""""`.__.`');
		writeln('    ._.`-``-`  ")/         /;/;                             []"/"""\"[]');
		writeln(' `-.-"..--""   " /         /  ;                             | \     / |');
		writeln('.-" ..--""        -`          :                             | |     | |');
		writeln('..--""--.-"         (\      .-(\                            | |     | |');
		writeln('  ..--""              `-\(\/                              <\\\)     (///>');
		writeln();  
		textcolor(7);
	end;

		
procedure dragonpicture1();
	begin                 
		writeln('                                                       ____________');
		writeln('                                 (`-..________....---``  ____..._.-`');
		writeln('                                  \\`._______.._,.---```     ,`');
		writeln('                                  ; )`.      __..-``-.      /');
		writeln('                                 / /     _.-` _,.;;._ `-._,`');
		writeln('                                / /   ,-` _.-`  //   ``--._``._');
		writeln('                              ,`,`_.-` ,-` _.- (( =-    -. `-._`-._____');
		writeln('                            ,;.``__..-`   _..--.\\.--`````--.._``-.`-._`.');
		writeln('             _          |\,` .-``        ```-``---``-...__,._  ``-.`-.`-.`.');
		writeln('  _     _.-,`(__)\__)\-`` `     ___  .          `     \      `--._');
		writeln(',`,)---` /|)          `     `      ``-.   `     /     /     `     `-.');
		writeln('\_____--.  ``  `               __..-.  \     . (   < _...-----..._   `.');
		writeln(' \_,--..__. \\ .-`.\----``;``,..-.__ \  \      ,`_. `.,-``--``---```.  )');
		writeln('           `.\`.\  `_.-..` ,`   _,-..`  /..,-``(, ,` ; ( _______`___..`__');
		writeln('                   ((,(,__(    ((,(,__,`  ```-- ```.(\  `.,..______');
		writeln('                                                      ``--------..._``--.__');
		writeln();
		textcolor(white);
	end;
	
	
procedure dragonpicture2();
	begin
		writeln('                                               _   __,----`~~~~~~~~~`-----.__');
		writeln('                                        .  .    `//====-              ____,-`~`');
		writeln('                        -.            \_|// .   /||\\  `~~~~`---.___./');
		writeln('                  ______-==.       _-~o  `\/    |||  \\           _,``');
		writeln('            __,--`   ,==`||\=_    ;_,_,/ _-`|-   |`\   \\        ,`');
		writeln('         _-`      ,=`    | \\`.    ``,/~7  /-   /  ||   `\.     /');
		writeln('       .`       ,`       |  \\  \_  "  /  /-   /   ||      \   /');
		writeln('      / _____  /         |     \\.`-_/  /|- _/   ,||       \ /');
		writeln('     ,-`     `-|--`~~`--_ \     `==-/  `| \`--===-`       _/`');
		writeln('               `         `-|      /|    )-`\~`      _,--"`');
		writeln('                           `-~^\_/ |    |   `\_   ,^             /\');
		writeln('                                /  \     \__   \/~               `\__');
		writeln('                            _,-` _/`\ ,-`~____-``-/                 ``===\');
		writeln('                           ((->/`    \|||` `.     `\.  ,                _||');
		writeln('             ./                       \_     `\      `~---|__i__i__\--~`_/');
		writeln('            <_n_                     __-^-_    `)  \-.______________,-~`');
		writeln('             `B`\)                  ///,-`~`__--^-  |-------~~~~^`');
		writeln('             /^>                           ///,--~`-\');
		writeln('            `  `');
		writeln();
		textcolor(white);
	end;
	
	
procedure knightpicture1();
	begin
		writeln('                    ___');
		writeln('      .----.      __) `\                      ,^.     |/\/\|');
		writeln('      | == |     < __=- |                     |||     |`||`|');
		writeln('   ___| :: |___   \\ `)/                      |||     |=||=|');
		writeln('  /\  `----`  /\  (\) (                       |||   .`._||_.`-.');
		writeln('   )\   `.   /( \/ /\\                        ===_ /\|  "`"  |/');
		writeln('  / |    :   | \  /  \\                        E]_|\/ \--|-|````|');
		writeln('    \   _._  /  `"   <_>                       O  ``  `=[:]| T  |'); 
		writeln('     xxx(o)xx                                         /""""|  F |');
		writeln('    /########\                                       /"""""`.__.`');
		writeln('   /##########\                                     []"/"""\"[]');
		writeln('   []"/"""\"[]                                      | \     / |');
		writeln('   | \     / |                                      | |     | |');
		writeln('   | |     | |                                      | |     | |');
		writeln(' <\\\)     (///>                                  <\\\)     (///>');            
		writeln();
		textcolor(white);
	end;
	
	
procedure knightpicture2();
	begin
		writeln('                          ___');
		writeln('            .----.      __) `\ ');
		writeln('            | == |     < __=- |');
		writeln('         ___| :: |___   \\ `)/');
		writeln('        /\  `----`  /\  (\) (');
		writeln('         )\   `.   /( \/ /\\');
		writeln('        / |    :   | \  /  \\');
		writeln('          \   _._  /  `"   <_>');
		writeln('           xxx(o)xx');
		writeln('          /########\');
		writeln('         /##########\ ');
		writeln('         []"/"""\"[]');
		writeln('         | \     / |');
		writeln('         | |     | |');
		writeln('       <\\\)     (///>');
		writeln();
		textcolor(white);
	end;
	
	
procedure wizardpicture1();
	begin
		writeln('                       ____');
		writeln('                     .`* *.`');
		writeln('                  __/_*_*(_');
		writeln('                 / _______ \');
		writeln('                _\_)/___\(_/_');
		writeln('               / _((\- -/))_ \');
		writeln('               \ \())(-)(()/ /');
		writeln('                | \(((()))/ |');
		writeln('               / | \)).))/ | \');
		writeln('              / _ \ - | - /_  \');
		writeln('             (   ( .;|||;. .|  )');
		writeln('             _\"__ /    )\ __"/_');
		writeln('               \/  \   | /  \/');
		writeln('                .|  |...| | )');
		writeln('                 / /  |  \ \');
		writeln('                / .   .   . \');
		writeln('               /   .     .   \');
		writeln('              /   /   |   \   \');
		writeln('            .|   /    b    |.  |.');
		writeln('        _.-|    /     Bb     |-. |-._');
		writeln('    _.-|       |      BBb       |-.  |-.');
		writeln('   (________mrf\____.dBBBb.________)____)');
		writeln();
		textcolor(white);
	end;
	
	
procedure wizardpicture2();
	begin
		writeln('                    ____');
		writeln('                  .`* *.`');
		writeln('               __/_*_*(_');
		writeln('              / _______ \');
		writeln('             _\_)/___\(_/_');
		writeln('            / _((\- -/))_ \');
		writeln('            \ \())(-)(()/ /');
		writeln('             | \(((()))/ |                                ,^.     |/\/\|');
		writeln('            / | \)).))/ | \                               |||     |`||`|');
		writeln('           / _ \ - | - /_  \                              |||     |=||=|');
		writeln('          (   ( .;|||;. .|  )                             |||   .`._||_.`-.');
		writeln('          _\"__ /    )\ __"/_                             ===_ /\|  "`"  |/');
		writeln('            \/  \   | /  \/                                E]_|\/ \--|-|````|');
		writeln('             .|  |...| | )                                 O  ``  `=[:]| T  |');
		writeln('              / /  |  \ \                                         /""""|  F |');
		writeln('             / .   .   . \                                       /"""""`.__.`');
		writeln('            /   .     .   \                                     []"/"""\"[]');
		writeln('           /   /   |   \   \                                    | \     / |');
		writeln('         .|   /    b    |.  |.                                  | |     | |');
		writeln('     _.-|    /     Bb     |-. |-._                              | |     | |');
		writeln(' _.-|       |      BBb       |-.  |-.                         <\\\)     (///>');
		writeln('(________mrf\____.dBBBb.________)____)                              ');
		writeln();
		textcolor(white);
	end;
	
end.