pick = menu('Title','People and Population','Families and Living arrangements', 'Health','Education','Business and Economy','Employment','Housing','Income and Poverty','Veterans','Income and Poverty');
 
switch(pick)
case 1
 whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
            switch(whatyear)
                
                case 1
                    year2010 = table2struct(readtable('2010Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2010pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2010pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2010);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2010(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         y=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2010(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2010(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2010 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2010 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
            
                case 2
                    year2011 = table2struct(readtable('2011Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2011pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2011pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2011);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2011(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2011(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2011(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2011 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2011 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
            
                    case 3
                    year2012 = table2struct(readtable('2012Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2012pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2012pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2012);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2012(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2012(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2012(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2012 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2012 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 end
                 case 4
                    year2013 = table2struct(readtable('2013Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2013pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2013pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2013);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2013(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2013(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2013(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2013 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2013 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 end
                 case 5
                    year2014 = table2struct(readtable('2014Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2014pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2014pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2014);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2014(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2014(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2014(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2014 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 end
                 case 6
                    year2015 = table2struct(readtable('2015Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2015pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2015pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2015);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2015(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2015(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2015(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2015 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2014 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2015 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
                 case 7
                    year2016 = table2struct(readtable('2016Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2016pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2016pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2016);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2016(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2016(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2016(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2016 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2016 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
                 case 8
                    year2017 = table2struct(readtable('2017Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2017pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2017pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2017);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2017(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2017(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2017(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2017 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2017 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
                 case 9
                    year2018 = table2struct(readtable('2018Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2018pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2018pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2018);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2018(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2018(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2018(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2018 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2018 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
                 case 10
                    year2019 = table2struct(readtable('2019Age & Sex.xlsx', 'PreserveVariableNames', true));
                 year2019pickacategory=   menu('Pick a category','Total Population','Age','Race');
                 switch(year2019pickacategory)
                     case 1
                         totalpopulationplace=[];
                         a= length(year2019);
                         
                     
                       totalpopulationplace = [2, 3, 4];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2019(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                            
                                 
                         end
       
                      x = categorical({'Total Population','Male','Female'});
                         b=bar(x,first3datafortotalpopulation,'y');
                         title('Total Population');
                         
                          xtips1=b(1).XEndPoints;
                             ytips1=b(1).YEndPoints;
                             labels1=string(b(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                             
                         options= ["Total Population", "Male","Female"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
                         end
                 
                     case 2
                         
                         
                         totalpopulationplace=[];
                        
                         
                      
                       totalpopulationplace = [5:1:17];
                         first3datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2019(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             first3datafortotalpopulation = [first3datafortotalpopulation numberr];
                             
                                 
                         end
       
                      x = categorical({'Under 5 years','5 to 9 years','10 to 14 years', '15 to 19 years','20 to 24 years','25 to 34 years','35 to 44 years','45 to 54 years','55 to 59 years','60 to 64 years','65 to 74 years','75 to 84 years','85 years and over'});
                         bar(x,first3datafortotalpopulation);
                         title('Total Population');
                         
                             
                         
                         options= ["Under 5 years","5 to 9 years","10 to 14 years", "15 to 19 years","20 to 24 years","25 to 34 years","35 to 44 years", "45 to 54 years","55 to 59 years","60 to 64 years","65 to 74 years","75 to 84 years","85 years and over"];
                         for i = 1:length(first3datafortotalpopulation)
                             fprintf('%s is %d\n',options(i), first3datafortotalpopulation(i))
              
                         end
                         case 3
                                 race=menu('Pick a Category','(Total Population)','(One Race)','(Two or more races)','(One race)','(White)','(Black or African American)','(American Indian and Alaska)', '(Cherokee)','(Chippewa)','(Navajo)','(Sioux)','(Asian)','(Asian Indian)','(Chinese)','(Filipino)','(Japanese)','(Korean)','(Vietnamese)','(Other Asian)','(Native Hawaiian and Other Race)', '(Native Hawaiian)','(Guamanian or Chamorro)','(Samoan)','(Other Pacific Islander)','(Some other race)','(Two or more races)','(White and Black or African American)','(White and American Indian and Alaska Native)','(White and Asian)','(Black or African American and American Indian and Alaska Native)','(Hispanic or Latino of any race)','(Mexican)','(Puerto Rican)','(Cuban)','(Other Hispanic or Latino)','(Not Hispanic or Latino)','(White alone)','(Black or African American alone)','(American Indian and Alaska Native alone)','(Asian alone)','(Native Hawaiian and Other Pacific Islander alone)','(Some other race alone)','(Two or more races)','(Two races including Some other race)','(Two races excluding Some other race, and Three or more races)')
                                 options1= ["(Total Population)","(One Race)", "(Two or more races)", "(One Race)", "(White)","(Black or African American)","(American Indian and Alaska)", "(Cherokee)","(Chippewa)","(Navajo)","(Sioux)","(Asian)","(Asian Indian)","(Chinese)","(Filipino)","(Japanese)","(Korean)","(Vietnamese)","(Other Asian)","(Native Hawaiian and Other Race)", "(Native Hawaiian)","(Guamanian or Chamorro)","(Samoan)","(Other Pacific Islander)","(Some other race)","(Two or more races)","(White and Black or African American)","(White and American Indian and Alaska Native)","(White and Asian)","(Black or African American and American Indian and Alaska Native)","(Hispanic or Latino of any race)","(Mexican)","(Puerto Rican)","(Cuban)","(Other Hispanic or Latino)","(Not Hispanic or Latino)","(White alone)","(Black or African American alone)","(American Indian and Alaska Native alone)","(Asian alone)","(Native Hawaiian and Other Pacific Islander alone)","(Some other race alone)","(Two or more races)","(Two races including Some other race)","(Two races excluding Some other race, and Three or more races)"];
                       totalpopulationplace=[];
           
                          totalpopulationplace = [30:1:85];
                         datafortotalpopulation = [];
                        
                         for i=1: length(totalpopulationplace)
                              
                             gettingelement = totalpopulationplace(i);
                        
                            numberr= year2019(gettingelement).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                             datafortotalpopulation = [datafortotalpopulation numberr];
                         end
                         switch(race)
                     case 1
                         fprintf('The %s in 2019 was %d.\n',options1(1),datafortotalpopulation(1))
                     case 2
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(2),datafortotalpopulation(2))
                     case 3
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(3),datafortotalpopulation(3))
                     case 4
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(4),datafortotalpopulation(4))
                     case 5
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(5),datafortotalpopulation(5))
                     case 6
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(6),datafortotalpopulation(6))
                     case 7
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(7),datafortotalpopulation(7))
                     case 8
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(8),datafortotalpopulation(8))
                     case 9
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(9),datafortotalpopulation(9))
                     case 10
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(10),datafortotalpopulation(10))
                     case 11
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(11),datafortotalpopulation(11))
                     case 12
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(12),datafortotalpopulation(12))
                     case 13
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(13),datafortotalpopulation(13))
                     case 14
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(14),datafortotalpopulation(14))
                     case 15
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(15),datafortotalpopulation(15))
                     case 16
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(16),datafortotalpopulation(16))
                     case 17
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(17),datafortotalpopulation(17))
                     case 18
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(18),datafortotalpopulation(18))
                     case 19
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(19),datafortotalpopulation(19))
                     case 20
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(20),datafortotalpopulation(20))
                     case 21
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(21),datafortotalpopulation(21))
                     case 22
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(22),datafortotalpopulation(22))
                     case 23
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(23),datafortotalpopulation(23))
                     case 24
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(24),datafortotalpopulation(24))
                     case 25
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(25),datafortotalpopulation(25))
                     case 26
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(26),datafortotalpopulation(26))
                     case 27
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(27),datafortotalpopulation(27))
                     case 28
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(28),datafortotalpopulation(28))
                     case 29
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(29),datafortotalpopulation(29))
                     case 30
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(30),datafortotalpopulation(30))
                     case 31
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(31),datafortotalpopulation(39))
                     case 32
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(32),datafortotalpopulation(40))
                     case 33
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(33),datafortotalpopulation(41))
                     case 34
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(34),datafortotalpopulation(42))
                     case 35
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(35),datafortotalpopulation(43))
                     case 36
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(36),datafortotalpopulation(44))
                     case 37
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(37),datafortotalpopulation(45))
                     case 38
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(38),datafortotalpopulation(46))
                     case 39
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(39),datafortotalpopulation(47))
                     case 40
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(40),datafortotalpopulation(48))
                     case 41
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(41),datafortotalpopulation(49))
                     case 42
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(42),datafortotalpopulation(50))
                     case 43
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(43),datafortotalpopulation(51))
                     case 44
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(44),datafortotalpopulation(52))
                     case 45
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(45),datafortotalpopulation(53))
                     case 46
                         fprintf('The population of %s people in the United States in 2019 was %d .\n',options1(46),datafortotalpopulation(54))
                         end
                 
                 end
            end
  
 

case 2 %

      whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
            switch(whatyear) %%
                case 1%%
                   year2010 = table2struct(readtable('2010Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 2%%
                    
                     year2010 = table2struct(readtable('2011Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Household By type');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 3%%
                    
                     year2010 = table2struct(readtable('2012Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Relationship');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Household By type');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                     
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                  
                case 4%%
                     year2010 = table2struct(readtable('2013Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 5%%
                     year2010 = table2struct(readtable('2014Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                  
                case 6%%
                    
                    year2010 = table2struct(readtable('2015Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                    
                case 7 %%
                     year2010 = table2struct(readtable('2016Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 8%%
                     year2010 = table2struct(readtable('2017Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 9%%
                     year2010 = table2struct(readtable('2018Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 10%%
                     year2010 = table2struct(readtable('2019Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:15
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=19:25
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=27:38
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=40:41
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=42:46
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=48:49
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=59:64
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=66:73
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=77:78
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=80:87
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=89:96
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=98:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=106:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                    
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=118:124
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=139:166
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 11%%
            end
        
     
 
            
            
            
            
            
            
            
            
            
            
 case 3 %
 fprintf('Health')  
                whattable=menu('Pick a table','Health Insurance','Disability');
                switch(whattable)
                case 1%%
                whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
                switch(whatyear)
                
                       case 1%%%
                       year2010 = table2struct(readtable('2010HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2010pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2010pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2010(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2010 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2010 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2010 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2010 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2010 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2010 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2010 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2010 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 2%%%
                       year2011 = table2struct(readtable('2011HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2011pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2011pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2011(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2011 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2011 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2011 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2011 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2011 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2011 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2011 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2011(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2011 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                      case 3%%%
                       year2012 = table2struct(readtable('2012HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2012pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2012pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2012(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2012 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2012 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2012 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2012 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2012 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2012 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2012 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2012(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2012 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end 
                       case 4%%%
                       year2013 = table2struct(readtable('2013HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2013pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2013pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2013(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2010 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2013 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2013 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2013 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2013 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2013 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2013 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2013(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2013 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 5%%%
                       year2014 = table2struct(readtable('2014HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2014pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2014pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2014(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2014 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2014 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year20104(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2014 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2014 was %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2014 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2014 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2014 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2014(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2014 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 6%%%
                       year2015 = table2struct(readtable('2015HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2015pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2015pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2015(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2015 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2015 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2015 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2015 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2015 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2015 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2015 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2015(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2015 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 7%%%
                       year2016 = table2struct(readtable('2016HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2016pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2016pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2016(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2016 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2016 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2016 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2016 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2016 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2016 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2016 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2016(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2016 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 8%%%
                       year2017 = table2struct(readtable('2017HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2017pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2017pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2017(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2017 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2017 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2017 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2017 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2017 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2017 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2017 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2017(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2017 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 9%%%
                       year2018 = table2struct(readtable('2018HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2018pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2018pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2018(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2018 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2018 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2018 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2018 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2018 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2018 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2018 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2018(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2018 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                       case 10%%%
                       year2019 = table2struct(readtable('2019HealthInsurance.xlsx', 'PreserveVariableNames', true));
                       year2019pickacategory=   menu('Pick a category','Employment Status','Commuting to Work','Occupation','Industry','Class of Worker','Income and Benefits','Families Income','Health Insurance Coverage');
                       switch(year2019pickacategory)
                           
                        case 1%%%%
                          estatus= [];
                          for i=2:8
                            numberr = year2019(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               estatus = [estatus numberr];
                              
                          end
                          estatus;
                            x=categorical({'Population 16 years and over','In labor force','Civilian labor force','Employed','Unemployed','Armed Forces','Not in labor force'})
                            options= ["Population 16 years and over","In labor force","Civilian labor force","Employed","Unemployed","Armed Forces","Not in labor force"];
                          y=bar(x,estatus);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Employment Status');
                             for i = 1:length(estatus)
                             fprintf('Employment status: %s in 2019 was %d\n',options(i),estatus(i))
                             end

                      case 2%%%%
                           commuting= [];
                          for i=20:27
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               commuting = [commuting numberr];
                              
                          end
                          commuting;
                            x = categorical({'Workers 16 years and over','Car, truck, or van--drove alone','Car, truck, or van--carpooled','Public transportation (excluding taxicab)','Walked','Other means','Worked at home','Mean travel time to work (minutes)'});
                        
                         
                         options= ["Workers 16 years and over","Car, truck, or van--drove alone","Car, truck, or van--carpooled","Public transportation (excluding taxicab)","Walked","Other means","Worked at home","Mean travel time to work (minutes)"];
                          y=bar(x,commuting);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Commuting to Work');
                         for i = 1:length(commuting)
                             fprintf('The %s in 2019 was %d.\n',options(i), commuting(i))
                         end  
                         case 3%%%%
                           occupation= [];
                          for i=29:34
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               occupation = [occupation numberr];
                              
                          end
                          occupation;
                            x = categorical({'Civilian employed population 16 years and over','Management, business, science, and arts occupations','Service occupations','Sales and office occupations','Natural resources, construction, and maintenance occupations','Production, transportation, and material moving occupations'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Management, business, science, and arts occupations","Service occupations","Sales and office occupations","Natural resources, construction, and maintenance occupations","Production, transportation, and material moving occupations"];
                          y=bar(x,occupation);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Occupation');
                         for i = 1:length(occupation)
                             fprintf('The %s in 2019 was %d.\n',options(i), occupation(i))
                             
                         end
                         case 4%%%%
                           industry= [];
                          for i=36:49
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               industry = [industry numberr];
                              
                          end
                          industry;
                            x = categorical({'Civilian employed population 16 years and over','Agriculture, forestry, fishing and hunting, and mining','Construction','Manufacturing','Wholesale trade','Retail trade','Transportation and warehousing, and utilities','Information','Finance and insurance, and real estate and rental and leasing','Professional, scientific, and management, and administrative and waste management services','Educational services, and health care and social assistance','Arts, entertainment, and recreation, and accommodation and food services','Other services, except public administration','Public administration'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Agriculture, forestry, fishing and hunting, and mining","Construction","Manufacturing","Wholesale trade","Retail trade","Transportation and warehousing, and utilities","Information","Finance and insurance, and real estate and rental and leasing","Professional, scientific, and management, and administrative and waste management services","Educational services, and health care and social assistance","Arts, entertainment, and recreation, and accommodation and food services","Other services, except public administration","Public administration"];
                          y=bar(x,industry);
                          %xtips1=y(1).XEndPoints;
                             %ytips1=y(1).YEndPoints;
                             %labels1=string(y(1).YData);
                             %text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                              %   'VerticalAlignment','bottom')
                         title('Industry');
                         for i = 1:length(industry)
                             fprintf('The %s in 2019 was  %d.\n',options(i), industry(i))
                         end
                         case 5%%%%
                           cworker= [];
                          for i=51:55
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               cworker = [cworker numberr];
                              
                          end
                          cworker;
                            x = categorical({'Civilian employed population 16 years and over','Private wage and salary workers','Government workers','Self-employed in own not incorporated business workers','Unpaid family workers'});
                        
                         
                         options= ["Civilian employed population 16 years and over","Private wage and salary workers","Government workers","Self-employed in own not incorporated business workers","Unpaid family workers"];
                          y=bar(x,cworker);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Class of Worker');
                         for i = 1:length(cworker)
                             fprintf('The %s in 2019 was  %d.\n',options(i), cworker(i))
                         end
                         case 6%%%
                           income= [];
                          for i=58:67
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               income = [income numberr];
                              
                          end
                          income;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Income and Benefits');
                         for i = 1:length(income)
                             fprintf('People with %s income in 2019 was %d.\n',options(i), income(i))
                         end
                         case 7%%%%
                           fincome= [];
                          for i=82:91
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               fincome = [fincome numberr];
                              
                          end
                          fincome;
                            x = categorical({'Less than $10,000','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $74,999','$75,000 to $99,999','$100,000 to $149,999','$150,000 to $199,999','$200,000 or more'});
                        
                         
                         options= ["Less than $10,000","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $74,999","$75,000 to $99,999","$100,000 to $149,999","$150,000 to $199,999","$200,000 or more"];
                          y=bar(x,fincome);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Families Income');
                         for i = 1:length(fincome)
                             fprintf('Families with %s income in 2019 was %d.\n',options(i), fincome(i))
                         end
                         case 8%%%%
                           hinsurance= [];
                          for i=102:126
                               numberr = year2019(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               hinsurance = [hinsurance numberr];
                              
                          end
                          hinsurance;
                            x = categorical({'Civilian noninstitutionalized population','With health insurance coverage','With private health insurance','With public coverage','-No health insurance coverage','Civilian noninstitutionalized population under 18 years','No health insurance coverage','Civilian noninstitutionalized population 18 to 64 years','In labor force:','Employed:','*With health insurance coverage','*With private health insurance','*With public coverage','*No health insurance coverage','Unemployed:','& With health insurance coverage','& With private health insurance','& With public coverage','& No health insurance coverage','Not in labor force:','+ With health insurance coverage','+ With private health insurance','+ With public coverage','+ No health insurance coverage'});
                        
                         
                         options= ["Civilian noninstitutionalized population","With health insurance coverage","With private health insurance","With public coverage","-No health insurance coverage","Civilian noninstitutionalized population under 18 years","No health insurance coverage","Civilian noninstitutionalized population 18 to 64 years","In labor force:","Employed:","*With health insurance coverage","*With private health insurance","*With public coverage","*No health insurance coverage","Unemployed:","& With health insurance coverage","& With private health insurance","& With public coverage","& No health insurance coverage","Not in labor force:","+ With health insurance coverage","+ With private health insurance","+ With public coverage","+ No health insurance coverage"];
                          y=bar(x,hinsurance);
                         
                         title('Health Insurance (* Employed), (& Unemployed), (+ Not in labor force)');
                         for i = 1:length(hinsurance)
                             fprintf('%s in 2019 was %d.\n',options(i), hinsurance(i))
                         end
                         
                       end
                end
                           
                           
                case 2%%
                whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
                switch(whatyear)
                end
                
                end

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
    case 4 %
        fprintf('Education')

        
        whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
            switch(whatyear) %%
                case 1%%
                   year2010 = table2struct(readtable('2010Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 2%%
                    
                     year2010 = table2struct(readtable('2011Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Household By type');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 3%%
                    
                     year2010 = table2struct(readtable('2012Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Relationship');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Household By type');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                     
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                  
                case 4%%
                     year2010 = table2struct(readtable('2013Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 5%%
                     year2010 = table2struct(readtable('2014Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                  
                case 6%%
                    
                    year2010 = table2struct(readtable('2015Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                    
                case 7 %%
                     year2010 = table2struct(readtable('2016Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 8%%
                     year2010 = table2struct(readtable('2017Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 9%%
                     year2010 = table2struct(readtable('2018Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:14
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=18:24
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=26:37
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=39:40
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=41:45
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=47:48
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=58:63
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=65:72
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=76:77
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=79:86
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=88:95
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=97:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=105:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=117:123
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=138:165
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 10%%
                     year2010 = table2struct(readtable('2019Education.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Household By Type','Relationship','Maritual Status','Fertility','Grandparents','School Enrollment','Educational Attainment','Veteran Status','Disability','Residence one year ago','Place of Birth','US Citizenship Status','World Region of Birth of Foreign Born','Ancestry');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1:15
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x = categorical({'Total Households','Family Households (Families)','Family households with own children under 18 years', 'Married-couple family','Married- couple with own children under 18 years','Male householder, no wife present, family','Male householder with own children under 18 years','Female householder, no husband present, family','Female householder, with own children under 18 years','Nonfamily households','Householder living alone','65 years and over','Households with one or more people under 18 years','Households with one or more people 65 years and over'});
                        
                         
                         options= ["Total Households","Family Households (Families)","Family with own children under 18 years", "Married-couple family","Married - couple with own children under 18 years","Male householder, no wife present, family","Male householder with own children under 18 years","Female householder, no husband present, family","Female householder, with own children under 18 years","Nonfamily households","Householder living alone","65 years and over","Households with one or more people under 18 years","Households with one or more people 65 years and over"];
                          bar(x,totalveterans);
                         title('Household By type');
                         for i = 1:length(totalveterans)
                             fprintf('%s is %d\n',options(i), totalveterans(i))
                         end
                         
                         
                         
                         
                         
                      case 2%%%
                           veterans_sex= [];
                          for i=19:25
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex
                            x = categorical({'Population in households','Householder','Spouse','Child','Other relatives','Nonrelatives','Unmarried partner'});
                        
                         
                         options= ["Population in households","Householder","Spouse","Child","Other relatives","Nonrelatives","Unmarried partner"];
                          bar(x,veterans_sex);
                         title('Relationship');
                         for i = 1:length(veterans_sex)
                             fprintf('%s is %d\n',options(i), veterans_sex(i))
                         end
                          
                          
                          
                          
                          
                          
                      case 3%%%
                          
                           Maritalstatus= [];
                          for i=27:38
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Maritalstatus = [Maritalstatus numberr];
                              
                          end
                          Maritalstatus;
                            x = categorical({'Males 15 years and over','Males 15 years and over never Married','Males 15 years and over now married, except separated','Males 15 years and over separated','Males 15 years and over widowed','Males 15 years and over divorced','Females 15 years and over','Females 15 years and over never married','Females 15 years and over now married, except separated','Females 15 years and over separated','Females 15 years and over widowed','Females 15 years and over divorced'});
                        
                         
                         options= ["Males 15 years and over","Males 15 years and over never married","Males 15 years and over now married, except separated","Males 15 years and over separated","Males 15 years and over widowed","Males 15 years and over divorced","Females 15 years and over","Females 15 years and over never married","Females 15 years and over now married, except separated","Females 15 years and over separated","Females 15 years and over widowed","Females 15 years and over divorced"];
                          bar(x,Maritalstatus);
                         title('Marital Status');
                         for i = 1:length(Maritalstatus)
                             fprintf('%s is %d\n',options(i), Maritalstatus(i))
                         end
                         
                         
                         
                         
                      case 4%%%
                          
                           Fertility= [];
                           Fertilitysmall= [];
                          for i=40:41
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertility = [Fertility numberr];
                              
                          end
                          numberr=0;
                           for i=42:46
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               Fertilitysmall = [Fertilitysmall numberr];
                              
                          end
                     subplot(3,1,1)
                            x = categorical({'Number of women 15 to 50 years old who had a birth in the past 12 months','Unmarried women(widowed,divorced, and never married'});
                        
                         
                         options= ["Number of women 15 to 50 years old whi had a birth in the past 12 months","Unmarried women(widowed, divorced, and never married"];
                          bar(x,Fertility);
                         title('Fertility');
                         for i = 1:length(Fertility)
                             fprintf('%s is %d\n',options(i), Fertility(i))
                         end
                       subplot(3,1,3)
                      x = categorical({'Per 1,000 unmarried women','Per 1,000 women 15 to 50 years old','Per 1,000 women 15 to 19 years old','Per 1,000 women 20 to 34 years old','Per 1,000 women 35 to 50 years old'});
                        
                         
                         options= ["Per 1,000 unmarried women","Per 1,000 women 15 to 50 years old","Per 1,000 women 15 to 19 years old","Per 1,000 women 20 to 34 years old","Per 1,000 women 35 to 50 years old"];
                          bar(x,Fertilitysmall);
                         title('Fertility');
                         for i = 1:length(Fertilitysmall)
                             fprintf('%s is %d\n',options(i), Fertilitysmall(i))
                         end
                      
                      case 5%%%
                          
                           grandparents= [];
                          for i=48:49
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          end
                          for i=50:56
                             numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               grandparents = [grandparents numberr];
                              
                          
                          end
                          grandparents;
                            x = categorical({'Number of grandparents living with own grandchildren under 18 years','Responsible for grandchildren','Less than 1 year','1 or 2 years','3 or 4 years','5 or more years','Number of grandparents responsible for own grandchildren under 18 years','Who are female','Who are married'});
                        
                         
                         options= ["Number of grandparents living with own grandchildren under 18 years","Responsible for grandchildren","Less than 1 year","1 or 2 years","3 or 4 years","5 or more years","Number of grandparens responsible for own grandchildren under 18 years","Who are female","Who are married"];
                          bar(x,grandparents);
                         title('Grandparents');
                         for i = 1:length(grandparents)
                             fprintf('%s is %d\n',options(i), grandparents(i))
                         end
                         
                      case 6%%%
                          
                            schoolenrollment= [];
                          for i=59:64
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               schoolenrollment = [schoolenrollment numberr];
                              
                          end
                          schoolenrollment;
                            x = categorical({'Population 3 years and over enrolled in school','Nursery school, preschool','Kindergarten','School type: Elementary school(Grades 1-8)','School type: High school(Grades 9-12)','School type: College or Graduate school'});
                        
                         
                         options= ["Population 3 years and over enrolled in school","Nursery school, preschool","Kindergarten","School type: Elementary school (Grades 1-8)","School type: High school (Grades 9-12)","School type: College or Graduate school"];
                          bar(x,schoolenrollment);
                         title('School Enrollment');
                         for i = 1:length(schoolenrollment)
                             fprintf('%s is %d\n',options(i), schoolenrollment(i))
                         end
                         
                         
                      case 7%%%
                          
                          educationalattainment= [];
                          for i=66:73
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               educationalattainment = [educationalattainment numberr];
                              
                          end
                          educationalattainment;
                            x = categorical({'Population 25 years and over','Grade: Less than 9th grade','Grade: 9th to 12th, no diploma','High school graduate(includes equivalency)','Some college, no degree','Associate''s degree','Bachelor''s degree','Grdaduate or professional degree'});
                        
                         
                         options= ["Population 25 years and over","Grade: Less than 9th grade","Grade 9th to 12th, no diploma","High school grade(includes equivalency)","Some college, no degree","Associate's degree","Bachelor's degree","Graduate or professional degree"];
                          bar(x,educationalattainment);
                         title('Educational Attainment');
                         for i = 1:length(educationalattainment)
                             fprintf('%s is %d\n',options(i), educationalattainment(i))
                         end
                         
                      case 8%%%
                          
                          
                         veteran= [];
                          for i=77:78
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               veteran = [veteran numberr];
                              
                          end
                          veteran;
                            x = categorical({'Civilian population 18 years and over','Civilian veterans'});
                        
                         
                         options= ["Civilian population 18 years and over","Civilian veterans"];
                          bar(x,veteran);
                         title('Veteran Status');
                         for i = 1:length(veteran)
                             fprintf('%s is %d\n',options(i), veteran(i))
                         end
                         
                         
                      case 9%%%
                          
                           disability= [];
                          for i=80:87
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               disability = [disability numberr];
                              
                          end
                          veteran;
                            x = categorical({'Total Civilian Noninstitutionalized Population','Total Civilian Noninstutionalized with a disability','Under 18 years population','Under 18 years with a disability','Between 18 to 64 years population','Between 18 to 64 years with a disability','65 years and over population','65 years and over with a disability'});
                        
                         
                         options= ["Total Civilian Noninstitutionalized Population","Total Civilian Noninstutionalized with a disability","Under 18 years population","Under 18 years with a disability","Between 18 to 64 years population","Between 18 to 64 years with a disability","65 years and over population","65 years and over with a disability"];
                          bar(x,disability);
                         title('Disability Status');
                         for i = 1:length(disability)
                             fprintf('%s is %d\n',options(i), disability(i))
                         end
                         
                          
                      case 10%%%
                         
                          residence= [];
                          for i=89:96
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               residence = [residence numberr];
                              
                          end
                          residence;
                            x = categorical({'Population 1 year and over','Same house','Different house in the U.S','County: Same County','County: Different County','State: Same State','State: Different State','Abroad'});
                        
                         
                         options= ["Population 1 year and over","Same house","Different house in the U.S","County: Same County","County: Different County","State: Same State","State: DIfferent State","Abroad"];
                          bar(x,residence);
                         title('Residence 1 year ago');
                         for i = 1:length(residence)
                             fprintf('%s is %d\n',options(i), residence(i))
                         end
                          
                      case 11%%%
                          
                          placeofbirth= [];
                          for i=98:103
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               placeofbirth = [placeofbirth numberr];
                              
                          end
                          placeofbirth;
                            x = categorical({'Total population','Native','Born in United States','State of residence','Different state','Born in Puerto Rico, U.S Island areas, or born abroad to American parent(s)','Foreign born'});
                        
                         
                         options= ["Total population","Native","Born in United States","State of Residence","Different state","Born in Puerto Rico, U.S. Island areas, or born abroad to American parent(s)","Foreign born"];
                          bar(x,placeofbirth);
                         title('Place of Birth');
                         for i = 1:length(placeofbirth)
                             fprintf('%s is %d\n',options(i), placeofbirth(i))
                         end
                      case 12%%%
                          
                          citizen= [];
                          for i=106:107
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               citizen = [citizen numberr];
                              
                          end
                    
                            x = categorical({'Foreign-born population','Naturalized U.S. Citizen','Not a U.S. Citizen'});
                        
                         
                         options= ["Foreign-born population","Naturalized U.S. Citizen","Not a U.S. Citizen"];
                          bar(x,citizen);
                         title('U.S. Citizen Status');
                         for i = 1:length(citizen)
                             fprintf('%s is %d\n',options(i), citizen(i))
                         end
                         
                      case 13%%%
                          
                          worldregion= [];
                          for i=118:124
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               worldregion = [worldregion numberr];
                              
                          end
                          worldregion;
                            x = categorical({'Foreign-born population, excluding population born at sea','Europe','Asia','Africa','Oceania','Latin America','Northern America'});
                        
                         
                         options= ["Foreign-born population, excluding population born at sea","Europe","Asia","Africa","Oceania","Latin America","Northern America"];
                          bar(x,worldregion);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(worldregion)
                             fprintf('%s is %d\n',options(i), worldregion(i))
                         end
                         
                         
                         
                      case 14%%%
                          
                            ancestry= [];
                          for i=139:166
                               numberr = year2010(i).Estimate;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               ancestry = [ancestry numberr];
                              
                          end
                          ancestry;
                            x = categorical({'Total population','American','Arab','Czech','Danish','Dutch','English','French (except Basque)','French Canadian','German','Greek','Hungarian','Irish','Italian','Lithuanian','Norwegian','Polish','Portuguese','Russian','Scotch-Irish','Scottish','Slovak','Subsaharan African','Swedish','Swiss','Ukrainian','Welsh','West Indian (excluding Hispanic origin groups'});
                        
                         
                         options= ["Total population","American","Arab","Czech","Danish","Dutch","English","French (except Basque)","French Canadian","German","Greek","Hungarian","Irish","Italian","Lithuanian","Norwegian","Polish","Portuguese","Russian","Scotch-Irish","Scottish","Slovak","Subsaharan African","Swedish","Swiss","Ukrainian","Welsh","West Indian (excluding Hispanic origin groups)"];
                          bar(x,ancestry);
                         title('World Region of Birth of Foreign Born');
                         for i = 1:length(ancestry)
                             fprintf('%s is %d\n',options(i), ancestry(i))
                         end
                         
                         
                  end
                case 11%%
            end
        
        
        
        
        
        
        
        
        
    case 5 %
        fprintf('Business and Economy')
    case 6 %
        fprintf('Employment')
    case 7 %
        fprintf('Housing')
    case 8 %
        fprintf('Income and Poverty')
    case 9 %
        fprintf('Veterans')
         whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
            switch(whatyear) %%
                case 1%%
                   year2010 = table2struct(readtable('2010Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2010pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2010pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x=categorical({'Total Veterans'})
                          y=bar(x,totalveterans);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Total Veterans');
                         
                             fprintf('The amount of Total Veterans in 2010 was %d\n',totalveterans)

                      case 2%%%
                           pservice= [];
                          for i=3:7
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               pservice = [pservice numberr];
                              
                          end
                          pservice;
                            x = categorical({'Gulf War (9/2001 or later) veterans','Gulf War (8/1990 to 8/2001) veterans','Vietnam era veterans','Korean War veterans','World War II Veterans'});
                        
                         
                         options= ["Gulf War (9/2001 or later) veterans","Gulf War (8/1990 to 8/2001) veterans","Vietnam era veterans","Korean War veterans","World War II Veterans"];
                          y=bar(x,pservice);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Period of Service');
                         for i = 1:length(pservice)
                             fprintf('The %s in 2010 was  %.2f percent. \n',options(i), pservice(i))
                         end  
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2010 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2010 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2010 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           veterans_income= [];
                          for i=30:31
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_income = [veterans_income numberr];
                              
                          end
                          veterans_income;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Median Income');
                         for i = 1:length(veterans_income)
                             fprintf('The %s income in 2010 was  %d.\n',options(i), veterans_income(i))
                         end
                         case 6%%%
                           veterans_education= [];
                          for i=34:37
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2010 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=40:2:42
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2010 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=45
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2010 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2010 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2010(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2010 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 2%%
                   year2011 = table2struct(readtable('2011Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2011pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2011pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x=categorical({'Total Veterans'})
                          y=bar(x,totalveterans);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Total Veterans');
                         
                             fprintf('The amount of Total Veterans in 2011 was %d\n',totalveterans)

                      case 2%%%
                           pservice= [];
                          for i=3:7
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               pservice = [pservice numberr];
                              
                          end
                          pservice;
                            x = categorical({'Gulf War (9/2001 or later) veterans','Gulf War (8/1990 to 8/2001) veterans','Vietnam era veterans','Korean War veterans','World War II Veterans'});
                        
                         
                         options= ["Gulf War (9/2001 or later) veterans","Gulf War (8/1990 to 8/2001) veterans","Vietnam era veterans","Korean War veterans","World War II Veterans"];
                          y=bar(x,pservice);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Period of Service');
                         for i = 1:length(pservice)
                             fprintf('The %s in 2011 was  %.2f percent. \n',options(i), pservice(i))
                         end  
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2011 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2011 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2011 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           veterans_income= [];
                          for i=30:31
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_income = [veterans_income numberr];
                              
                          end
                          veterans_income;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Median Income');
                         for i = 1:length(veterans_income)
                             fprintf('The %s income in 2011 was  %d.\n',options(i), veterans_income(i))
                         end
                         case 6%%%
                           veterans_education= [];
                          for i=34:37
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2011 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=40:2:42
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2011 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=45
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2011 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2011 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2011(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2011 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 3%%
                   year2012 = table2struct(readtable('2012Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2012pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2012pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x=categorical({'Total Veterans'})
                          y=bar(x,totalveterans);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Total Veterans');
                         
                             fprintf('The amount of Total Veterans in 2012 was %d\n',totalveterans)

                      case 2%%%
                           pservice= [];
                          for i=3:7
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               pservice = [pservice numberr];
                              
                          end
                          pservice;
                            x = categorical({'Gulf War (9/2001 or later) veterans','Gulf War (8/1990 to 8/2001) veterans','Vietnam era veterans','Korean War veterans','World War II Veterans'});
                        
                         
                         options= ["Gulf War (9/2001 or later) veterans","Gulf War (8/1990 to 8/2001) veterans","Vietnam era veterans","Korean War veterans","World War II Veterans"];
                          y=bar(x,pservice);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Period of Service');
                         for i = 1:length(pservice)
                             fprintf('The %s in 2012 was  %.2f percent. \n',options(i), pservice(i))
                         end  
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2012 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2012 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           veterans_income= [];
                          for i=30:31
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_income = [veterans_income numberr];
                              
                          end
                          veterans_income;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Median Income');
                         for i = 1:length(veterans_income)
                             fprintf('The %s income in 2012 was  %d.\n',options(i), veterans_income(i))
                         end
                         case 6%%%
                           veterans_education= [];
                          for i=34:37
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2012 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=40:2:42
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2012 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=45
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2012 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2012 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2012(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2012 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 4%%
                   year2013 = table2struct(readtable('2013Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2013pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2013pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x=categorical({'Total Veterans'})
                          y=bar(x,totalveterans);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Total Veterans');
                         
                             fprintf('The amount of Total Veterans in 2013 was %d\n',totalveterans)

                      case 2%%%
                           pservice= [];
                          for i=3:7
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               pservice = [pservice numberr];
                              
                          end
                          pservice;
                            x = categorical({'Gulf War (9/2001 or later) veterans','Gulf War (8/1990 to 8/2001) veterans','Vietnam era veterans','Korean War veterans','World War II Veterans'});
                        
                         
                         options= ["Gulf War (9/2001 or later) veterans","Gulf War (8/1990 to 8/2001) veterans","Vietnam era veterans","Korean War veterans","World War II Veterans"];
                          y=bar(x,pservice);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Period of Service');
                         for i = 1:length(pservice)
                             fprintf('The %s in 2013 was  %.2f percent. \n',options(i), pservice(i))
                         end  
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2013 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2013 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           veterans_income= [];
                          for i=30:31
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_income = [veterans_income numberr];
                              
                          end
                          veterans_income;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Median Income');
                         for i = 1:length(veterans_income)
                             fprintf('The %s income in 2013 was  %d.\n',options(i), veterans_income(i))
                         end
                         case 6%%%
                           veterans_education= [];
                          for i=34:37
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2013 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=40:2:42
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2013 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=45
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2013 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2013 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2013(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2013 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 5%%
                   year2014 = table2struct(readtable('2014Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2014pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2014pickacategory)
                      case 1%%%
                          totalveterans= [];
                          for i=1
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               totalveterans = [totalveterans numberr];
                              
                          end
                          totalveterans;
                            x=categorical({'Total Veterans'})
                          y=bar(x,totalveterans);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Total Veterans');
                         
                             fprintf('The amount of Total Veterans in 2014 was %d\n',totalveterans)

                      case 2%%%
                           pservice= [];
                          for i=3:7
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               pservice = [pservice numberr];
                              
                          end
                          pservice;
                            x = categorical({'Gulf War (9/2001 or later) veterans','Gulf War (8/1990 to 8/2001) veterans','Vietnam era veterans','Korean War veterans','World War II Veterans'});
                        
                         
                         options= ["Gulf War (9/2001 or later) veterans","Gulf War (8/1990 to 8/2001) veterans","Vietnam era veterans","Korean War veterans","World War II Veterans"];
                          y=bar(x,pservice);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Period of Service');
                         for i = 1:length(pservice)
                             fprintf('The %s in 2014 was  %.2f percent. \n',options(i), pservice(i))
                         end  
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2014 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'One Race','White','Black or African American','American Indian and alaska Native','Asian','Native Hawaiian and Pacific Islander','Some other race','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["One Race","White","Black or African American","American Indian and alaska Native","Asian","Native Hawaiian and Pacific Islander","Some other race","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2014 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           veterans_income= [];
                          for i=30:31
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_income = [veterans_income numberr];
                              
                          end
                          veterans_income;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_income);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Median Income');
                         for i = 1:length(veterans_income)
                             fprintf('The %s income in 2014 was  %d.\n',options(i), veterans_income(i))
                         end
                         case 6%%%
                           veterans_education= [];
                          for i=34:37
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2014 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=40:2:42
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2014 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=45
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2014 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2014 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2014(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2014 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 6%%
                   year2015 = table2struct(readtable('2015Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2015pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2015pickacategory)
                      case 1%%%
                          fprintf('Data is not provided by the Census.\n')
                      case 2%%%
                         fprintf('Data is not provided by the Census.\n')
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2015 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'White alone','Black or African American alone','American Indian and Alaska Native alone','Asian alone','Native Hawaiian and Pacific Islander alone','Some other race alone','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["White alone","Black or African American alone","American Indian and Alaska Native alone","Asian alone","Native Hawaiian and Pacific Islander alone","Some other race alone","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2015 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           fprintf('Data is not provided by the Census\n')
                         case 6%%%
                           veterans_education= [];
                          for i=33:36
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2015 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=39:2:41
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2015 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=44
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2015 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2015 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2015(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2015 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 7%%
                   year2016 = table2struct(readtable('2016Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2016pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2016pickacategory)
                      case 1%%%
                          fprintf('Data is not provided by the Census.\n')
                      case 2%%%
                         fprintf('Data is not provided by the Census.\n')
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2016 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'White alone','Black or African American alone','American Indian and Alaska Native alone','Asian alone','Native Hawaiian and Pacific Islander alone','Some other race alone','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["White alone","Black or African American alone","American Indian and Alaska Native alone","Asian alone","Native Hawaiian and Pacific Islander alone","Some other race alone","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2016 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           fprintf('Data is not provided by the Census\n')
                         case 6%%%
                           veterans_education= [];
                          for i=33:36
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2016 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=39:2:41
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2016 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=44
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2016 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2016 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2016(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2016 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 8%%
                   year2017 = table2struct(readtable('2017Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2017pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2017pickacategory)
                      case 1%%%
                          fprintf('Data is not provided by the Census.\n')
                      case 2%%%
                         fprintf('Data is not provided by the Census.\n')
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2017 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'White alone','Black or African American alone','American Indian and Alaska Native alone','Asian alone','Native Hawaiian and Pacific Islander alone','Some other race alone','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["White alone","Black or African American alone","American Indian and Alaska Native alone","Asian alone","Native Hawaiian and Pacific Islander alone","Some other race alone","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2017 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           fprintf('Data is not provided by the Census\n')
                         case 6%%%
                           veterans_education= [];
                          for i=33:36
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2017 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=39:2:41
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2017 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=44
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2017 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2017 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2017(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2017 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 9%%
                   year2018 = table2struct(readtable('2018Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2018pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2018pickacategory)
                      case 1%%%
                          fprintf('Data is not provided by the Census.\n')
                      case 2%%%
                         fprintf('Data is not provided by the Census.\n')
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2018 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'White alone','Black or African American alone','American Indian and Alaska Native alone','Asian alone','Native Hawaiian and Pacific Islander alone','Some other race alone','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["White alone","Black or African American alone","American Indian and Alaska Native alone","Asian alone","Native Hawaiian and Pacific Islander alone","Some other race alone","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2018 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           fprintf('Data is not provided by the Census\n')
                         case 6%%%
                           veterans_education= [];
                          for i=33:36
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2018 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=39:2:41
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2018 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=44
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2018 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2018 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2018(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2018 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
                  case 10%%
                   year2019 = table2struct(readtable('2019Veterans.xlsx', 'PreserveVariableNames', true)); 
                  year2019pickacategory=   menu('Pick a category','Total Veterans','Period of Service','Sex','Race','Median Income in the Past 12 Months','Educational Attainment','Employment Status','Poverty Status in the Past 12 Months','Disability Status','Age');
              
                  switch(year2019pickacategory)
                      case 1%%%
                          fprintf('Data is not provided by the Census.\n')
                      case 2%%%
                         fprintf('Data is not provided by the Census.\n')
                         case 3%%%
                           veterans_sex= [];
                          for i=9:10
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_sex = [veterans_sex numberr];
                              
                          end
                          veterans_sex;
                            x = categorical({'Male','Female'});
                        
                         
                         options= ["Male","Female"];
                          y=bar(x,veterans_sex);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by sex');
                         for i = 1:length(veterans_sex)
                             fprintf('The %s in 2019 was  %.2f percent. \n',options(i), veterans_sex(i))
                             
                         end
                         
                         case 4%%%
                           veterans_race= [];
                          for i=18:27
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_race = [veterans_race numberr];
                              
                          end
                          veterans_race;
                            x = categorical({'White alone','Black or African American alone','American Indian and Alaska Native alone','Asian alone','Native Hawaiian and Pacific Islander alone','Some other race alone','Two or more races','Hispanic or Latino (of any race)','White alone, not Hispanic or Latino'});
                        
                         
                         options= ["White alone","Black or African American alone","American Indian and Alaska Native alone","Asian alone","Native Hawaiian and Pacific Islander alone","Some other race alone","Two or more races","Hispanic or Latino (of any race)","White alone, not Hispanic or Latino"];
                          y=bar(x,veterans_race);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans by race');
                         for i = 1:length(veterans_race)
                             fprintf('The %s in 2019 was  %.2f percent. \n',options(i), veterans_race(i))
                         end
                         case 5%%%
                           fprintf('Data is not provided by the Census\n')
                         case 6%%%
                           veterans_education= [];
                          for i=33:36
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_education = [veterans_education numberr];
                              
                          end
                          veterans_education;
                            x = categorical({'Less than high school graduate','High School graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree or higher'});
                        
                         
                         options= ["Less than high school graduate","High School graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree or higher"];
                          y=bar(x,veterans_education);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Education Attainment in percents');
                         for i = 1:length(veterans_education)
                             fprintf('Veterans with %s in 2019 was  %.2f percent.\n',options(i), veterans_education(i))
                         end
                         case 7%%%
                           veterans_employment= [];
                          for i=39:2:41
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_employment = [veterans_employment numberr];
                              
                          end
                          veterans_employment;
                            x = categorical({'Labor force participation rate','Unemployment rate'});
                        
                         
                         options= ["Labor force participation rate","Unemployment rate"];
                          y=bar(x,veterans_employment);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Employment Status');
                         for i = 1:length(veterans_employment)
                             fprintf('Veterans %s in 2019 was  %.2f percent.\n',options(i), veterans_employment(i))
                         end
                         case 8%%%
                           veterans_poverty= [];
                          for i=44
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_poverty = [veterans_poverty numberr];
                              
                          end
                          veterans_poverty;
                            x = categorical({'Below poverty in the last 12 months'});
                        
                         
                         options= ["Below poverty in the last 12 months"];
                          y=bar(x,veterans_poverty);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Poverty Status in the Past 12 Months');
                         for i = 1:length(veterans_poverty)
                             fprintf('Veterans %s in 2019 was  %.2f percent.\n',options(i), veterans_poverty(i))
                         end
                         case 9%%%
                           veterans_disability= [];
                          for i=48
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_disability = [veterans_disability numberr];
                              
                          end
                          veterans_disability;
                            x = categorical({'With any disability'});
                        
                         
                         options= ["With any disablity"];
                          y=bar(x,veterans_disability);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Disability Status in percent');
                         for i = 1:length(veterans_disability)
                             fprintf('Veterans %s in 2019 was  %.2f percent.\n',options(i), veterans_disability(i))
                         end
                         case 10%%%
                           veterans_age= [];
                          for i=12:16
                               numberr = year2019(i).Estimate2;
                        
                      
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               veterans_age = [veterans_age numberr];
                              
                          end
                          veterans_age;
                            x = categorical({'18 to 34 years','35 to 54 years','55 to 64 years','65 to 74 years','75 years and over'});
                        
                         
                         options= ["18 to 34 years","35 to 54 years","55 to 64 years","65 to 74 years","75 years and over"];
                          y=bar(x,veterans_age);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                         title('Veterans Age by percent');
                         for i = 1:length(veterans_age)
                             fprintf('Veterans with %s in 2019 was  %.2f percent.\n',options(i), veterans_age(i))
                         end
                  end
            end  

    case 10%%
        fprintf('Income and Poverty')
        
                        whatyear= menu('Pick A Year','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2010-2019');
                switch(whatyear)
                case 1%%%
                       year2010 = table2struct(readtable('2010Earnings.xlsx', 'PreserveVariableNames', true));
                       year2010pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2010pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2010(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2010 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2010(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2010 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2010(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2010 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 2%%%
                       year2011 = table2struct(readtable('2011Earnings.xlsx', 'PreserveVariableNames', true));
                       year2011pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2011pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2011(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2011 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2011(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2011 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2011(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2011 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 3%%%
                       year2012 = table2struct(readtable('2012Earnings.xlsx', 'PreserveVariableNames', true));
                       year2012pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2012pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2012(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2012 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2012(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2012 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2012(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2012 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 4%%%
                       year2013 = table2struct(readtable('2013Earnings.xlsx', 'PreserveVariableNames', true));
                       year2013pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2013pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2013(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2013 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2013(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2013 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2013(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2013 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 5%%%
                       year2014 = table2struct(readtable('2014Earnings.xlsx', 'PreserveVariableNames', true));
                       year2014pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2014pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2014(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2014 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2014(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2012 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2014(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2014 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 6%%%
                       year2015 = table2struct(readtable('2015Earnings.xlsx', 'PreserveVariableNames', true));
                       year2015pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2015pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2015(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2015 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2015(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2015 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2015(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2015 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 7%%%
                       year2016 = table2struct(readtable('2016Earnings.xlsx', 'PreserveVariableNames', true));
                       year2016pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2016pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2016(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2016 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2016(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2016 was %.2f in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2016(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2016 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 8%%%
                       year2017 = table2struct(readtable('2017Earnings.xlsx', 'PreserveVariableNames', true));
                       year2017pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2017pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2017(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2017 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2017(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2017 was %d\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:23
                            numberr = year2017(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2017 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 9%%%
                       year2018 = table2struct(readtable('2018Earnings.xlsx', 'PreserveVariableNames', true));
                       year2018pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2018pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2018(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2018 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2018(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2018 was %d\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:21
                            numberr = year2018(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2018 was %d.\n',options(i),mearnings(i))
                             end
                       end
                       case 10%%%
                       year2019 = table2struct(readtable('2019Earnings.xlsx', 'PreserveVariableNames', true));
                       year2019pickacategory=   menu('Pick a category','Total Earnings','Earnings by Range','Median Earnings by Educational Attainment');
                       switch(year2019pickacategory)
                           
                        
                          case 1%%%%
                          earnings= [];
                          for i=1:3
                            numberr = year2019(i).TotalEstimate;
                            numberr = erase(numberr,',');
                            numberr = str2num(numberr);
                               earnings = [earnings numberr];
                              
                          end
                          earnings;
                            x=categorical({'Population 16 years and over with earnings','Median earnings (dollars)','FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS'})
                            options= ["Population 16 years and over with earnings","Median earnings (dollars)","FULL-TIME, YEAR-ROUND WORKERS WITH EARNINGS"];
                          y=bar(x,earnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Total Earnings');
                             for i = 1:length(earnings)
                             fprintf('%s in 2019 was %d\n',options(i),earnings(i))
                             end
                             case 2%%%%
                          tearnings= [];
                          for i=4:12
                            numberr = year2019(i).Estimate;
                            numberr = erase(numberr,',');
                            numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               tearnings = [tearnings numberr];
                              
                          end
                          tearnings;
                            x=categorical({'$1 to $9,999 or loss','$10,000 to $14,999','$15,000 to $24,999','$25,000 to $34,999','$35,000 to $49,999','$50,000 to $64,999','$65,000 to $74,999','$75,000 to $99,999','$100,000 or more'})
                            options= ["$1 to $9,999 or loss","$10,000 to $14,999","$15,000 to $24,999","$25,000 to $34,999","$35,000 to $49,999","$50,000 to $64,999","$65,000 to $74,999","$75,000 to $99,999","$100,000 or more"];
                          y=bar(x,tearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('Earnings by Range in Percent');
                             for i = 1:length(tearnings)
                             fprintf('%s in 2019 was %d in percent\n',options(i),tearnings(i))
                             end
                             case 3%%%%
                          mearnings= [];
                          for i=16:21
                            numberr = year2019(i).Estimate;
                            numberr = erase(numberr,',');
                            %numberr = erase(numberr,'%');
                            numberr = str2num(numberr);
                               mearnings = [mearnings numberr];
                              
                          end
                          mearnings;
                            x=categorical({'Population 25 years and over with earnings','Less than high school graduate','High school graduate (includes equivalency)','Some college or associate''s degree','Bachelor''s degree','Graduate or professional degree'})
                            options= ["Population 25 years and over with earnings","Less than high school graduate","High school graduate (includes equivalency)","Some college or associate''s degree","Bachelor''s degree","Graduate or professional degree"];
                          y=bar(x,mearnings);
                          xtips1=y(1).XEndPoints;
                             ytips1=y(1).YEndPoints;
                             labels1=string(y(1).YData);
                             text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
                                 'VerticalAlignment','bottom')
                              title('MEDIAN EARNINGS BY EDUCATIONAL ATTAINMENT');
                             for i = 1:length(mearnings)
                             fprintf('%s in 2019 was %d.\n',options(i),mearnings(i))
                             end
                       end
                
                
                end
                       
                end
                
                          
    