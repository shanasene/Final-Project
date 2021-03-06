function [] = FinalProject()
%for this to work you need to plot the function first, then you can label
%the graph, and then put in the UI control section.
prompt = 'Please enter the function: '; %asks for user input
x = input(prompt, 's');

fp = fplot(x)
disp(x)

title_name=input('Title? ', 's') %asks for plot title
title(title_name);
hold on;
xTitle = uicontrol('style','Edit',...%Empty box for x title
    'string','',...
    'Units','normalized',...
    'Position',[.45 .1 .1 .05],...
    'backgroundcolor','w',...
    'Tag','EditField');
yTitle = uicontrol('style','Edit',...%Empty box for y title
    'string','',...
    'Units','normalized',...
    'Position',[.035 .25 .1 .05],...
    'backgroundcolor','w',...
    'Tag','EditField');
xInputs = uicontrol('style','Edit',... %box to input x values
    'string','1',...
    'Units','normalized',...
    'Position',[.1 .025 .1 .05],...
    'backgroundcolor','w',...
    'Tag','EditField');

yInputs = uicontrol('style','Edit',... %box to input y values
    'string','1',...
    'Units','normalized',...
    'Position',[.85 .025 .1 .05],...
    'backgroundcolor','w',...
    'Tag','EditField');
Graph = uicontrol('style','PushButton',... %button that plots the data entered
    'string','Graph',...
    'Units','normalized',...
    'Position',[.65 .025 .15 .05],...
    'callback',{@graph},...
    'backgroundcolor','w');
Reset = uicontrol('style','PushButton',... %button to reset graph
    'string','Reset',...
    'Units','normalized',...
    'Position',[.25 .025 .15 .05],...
    'callback',{@reset},...
    'backgroundcolor','w');



    function selection(src,event)
        val = c.Value;
        str = c.String;
        str{val};
        disp(['Selection: ' str{val}]);
        function ac_Callback(h0bject, eventdata, handles)
            set(handles.edit1, 'string', '0');
            function simple_Callback(h0bject, eventdata, handles)
                g = get(handles.edit1, 'string');
                syms('x');
                s = simple(sym(g));
                set(handles.edit1, 'string', char(s));
                
                function reset(~,~) %reset function, deletes and remakes plot
                    xlim([0 2])
                    ylim([0 2])
                    
                end
            end
            
        end
    end
end


