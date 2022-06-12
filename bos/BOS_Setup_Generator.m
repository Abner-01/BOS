classdef BOS_Setup_Generator < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        Menu                            matlab.ui.container.Menu
        SavesetupMenu                   matlab.ui.container.Menu
        LoadsetupMenu                   matlab.ui.container.Menu
        CompareMenu                     matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        AllvariablesinMATLABworkspaceMenu  matlab.ui.container.Menu
        SetupdataandperformanceMenu     matlab.ui.container.Menu
        BackgroundgenerationdataMenu    matlab.ui.container.Menu
        ImageMenu                       matlab.ui.container.Menu
        OpticresolutionMenu             matlab.ui.container.Menu
        ParaxialapproximationerrorMenu  matlab.ui.container.Menu
        FieldofviewprojectionMenu       matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        Documentation                   matlab.ui.container.Menu
        ComputeButton                   matlab.ui.control.Button
        LoadsetupButton                 matlab.ui.control.Button
        SavesetupButton                 matlab.ui.control.Button
        LogoApp                         matlab.ui.control.Image
        OutputsTab                      matlab.ui.container.TabGroup
        ResolutionTab                   matlab.ui.container.Tab
        SetupcharacteristicsPanel       matlab.ui.container.Panel
        mmLabel_17                      matlab.ui.control.Label
        dpiLabel                        matlab.ui.control.Label
        pxLabel_3                       matlab.ui.control.Label
        mmLabel_8                       matlab.ui.control.Label
        mmLabel_7                       matlab.ui.control.Label
        FOVsubeffsubEditField           matlab.ui.control.NumericEditField
        FOVsubeffsubEditFieldLabel      matlab.ui.control.Label
        MEditField                      matlab.ui.control.NumericEditField
        MEditFieldLabel                 matlab.ui.control.Label
        DeltaXEditField                 matlab.ui.control.NumericEditField
        DeltaXEditFieldLabel            matlab.ui.control.Label
        pixelprojEditField              matlab.ui.control.NumericEditField
        pixelprojEditFieldLabel         matlab.ui.control.Label
        rsubIPsubEditField_2            matlab.ui.control.NumericEditField
        rsubIPsubLabel                  matlab.ui.control.Label
        rsubtsubEditField_2             matlab.ui.control.NumericEditField
        rsubtsubEditField_2Label        matlab.ui.control.Label
        SetupscomparisonPanel           matlab.ui.container.Panel
        Setup3Panel                     matlab.ui.container.Panel
        ClearButton_3                   matlab.ui.control.Button
        LoadconfigurationButton_3       matlab.ui.control.Button
        pxLabel_6                       matlab.ui.control.Label
        DeltaXEditField_4               matlab.ui.control.NumericEditField
        DeltaXEditField_2Label_3        matlab.ui.control.Label
        mmLabel_14                      matlab.ui.control.Label
        FOVsubeffsubEditField_4         matlab.ui.control.NumericEditField
        FOVsubeffsubEditField_2Label_3  matlab.ui.control.Label
        ConfEditField_3                 matlab.ui.control.EditField
        ConfEditField_3Label            matlab.ui.control.Label
        mmLabel_13                      matlab.ui.control.Label
        rsubIPsubEditField_4            matlab.ui.control.NumericEditField
        rsubIPsubLabel_4                matlab.ui.control.Label
        mmLabel_12                      matlab.ui.control.Label
        rsubtsubEditField_4             matlab.ui.control.NumericEditField
        rsubtsubLabel_3                 matlab.ui.control.Label
        fsubsubEditField_3              matlab.ui.control.NumericEditField
        fsubsubEditField_3Label         matlab.ui.control.Label
        Setup2Panel                     matlab.ui.container.Panel
        ClearButton_2                   matlab.ui.control.Button
        LoadconfigurationButton_2       matlab.ui.control.Button
        pxLabel_5                       matlab.ui.control.Label
        DeltaXEditField_3               matlab.ui.control.NumericEditField
        DeltaXEditField_2Label_2        matlab.ui.control.Label
        mmLabel_11                      matlab.ui.control.Label
        FOVsubeffsubEditField_3         matlab.ui.control.NumericEditField
        FOVsubeffsubEditField_2Label_2  matlab.ui.control.Label
        ConfEditField_2                 matlab.ui.control.EditField
        ConfEditField_2Label            matlab.ui.control.Label
        mmLabel_10                      matlab.ui.control.Label
        rsubIPsubEditField_3            matlab.ui.control.NumericEditField
        rsubIPsubLabel_3                matlab.ui.control.Label
        mmLabel_9                       matlab.ui.control.Label
        rsubtsubEditField_3             matlab.ui.control.NumericEditField
        rsubtsubLabel_2                 matlab.ui.control.Label
        fsubsubEditField_2              matlab.ui.control.NumericEditField
        fsubsubEditField_2Label         matlab.ui.control.Label
        Setup1Panel                     matlab.ui.container.Panel
        ClearButton                     matlab.ui.control.Button
        pxLabel_4                       matlab.ui.control.Label
        mmLabel_5                       matlab.ui.control.Label
        mmLabel_4                       matlab.ui.control.Label
        mmLabel_3                       matlab.ui.control.Label
        LoadconfigurationButton         matlab.ui.control.Button
        DeltaXEditField_2               matlab.ui.control.NumericEditField
        DeltaXEditField_2Label          matlab.ui.control.Label
        FOVsubeffsubEditField_2         matlab.ui.control.NumericEditField
        FOVsubeffsubEditField_2Label    matlab.ui.control.Label
        ConfEditField                   matlab.ui.control.EditField
        ConfEditFieldLabel              matlab.ui.control.Label
        rsubIPsubEditField              matlab.ui.control.NumericEditField
        rsubIPsubLabel_2                matlab.ui.control.Label
        rsubtsubEditField               matlab.ui.control.NumericEditField
        rsubtsubLabel                   matlab.ui.control.Label
        fsubsubEditField                matlab.ui.control.NumericEditField
        fsubsubLabel                    matlab.ui.control.Label
        OpticResolutionUIAxes           matlab.ui.control.UIAxes
        SetupcharacteristicsTab         matlab.ui.container.Tab
        ErrorplotfeaturesPanel          matlab.ui.container.Panel
        percLabel_51                    matlab.ui.control.Label
        epsilonthresholdEditField       matlab.ui.control.NumericEditField
        epsilonthresholdEditFieldLabel  matlab.ui.control.Label
        EditFieldPortrait_14            matlab.ui.control.Label
        FOVplotfeaturesPanel            matlab.ui.container.Panel
        TextSwitch                      matlab.ui.control.Switch
        TextSwitchLabel                 matlab.ui.control.Label
        LegendSwitch                    matlab.ui.control.Switch
        LegendSwitchLabel               matlab.ui.control.Label
        FieldofviewBACKGROUNDPanel      matlab.ui.container.Panel
        xLabel_71                       matlab.ui.control.Label
        mmLabel_71                      matlab.ui.control.Label
        mmLabel_71_2                    matlab.ui.control.Label
        FOVsubeffsubEditField_71_2      matlab.ui.control.NumericEditField
        FOVsubeffsubEditField_71        matlab.ui.control.NumericEditField
        FOVsubeffsubEditField_71Label   matlab.ui.control.Label
        MeasurementSensitivityPanel     matlab.ui.container.Panel
        pxLabel_40                      matlab.ui.control.Label
        DeltaXEditField_40              matlab.ui.control.NumericEditField
        DeltaXEditField_40Label         matlab.ui.control.Label
        pxLabel_41                      matlab.ui.control.Label
        IWEditField_41                  matlab.ui.control.NumericEditField
        IWEditField_41Label             matlab.ui.control.Label
        SetupPanel                      matlab.ui.container.Panel
        percLabel_50                    matlab.ui.control.Label
        epsilonsubparaxialapproxmaxsubEditField_50  matlab.ui.control.NumericEditField
        epsilonsubparaxialapproxmaxsubEditFieldLabel  matlab.ui.control.Label
        dpiLabel_50                     matlab.ui.control.Label
        pixelprojEditField_50           matlab.ui.control.NumericEditField
        pixelprojEditField_50Label      matlab.ui.control.Label
        MEditField_50                   matlab.ui.control.NumericEditField
        ZsubgradsubEditFieldLabel_3     matlab.ui.control.Label
        mmEditField_50                  matlab.ui.control.Label
        ZsublenssubEditField_50         matlab.ui.control.NumericEditField
        ZsublenssubEditField_50Label    matlab.ui.control.Label
        mmEditField_51                  matlab.ui.control.Label
        ZsubgradsubEditField_50         matlab.ui.control.NumericEditField
        ZsubgradsubEditFieldLabel_50    matlab.ui.control.Label
        MeasurementResolutionPanel      matlab.ui.container.Panel
        mmEditField_60                  matlab.ui.control.Label
        rsubIPsubEditField_60           matlab.ui.control.NumericEditField
        rsubIPsubEditField_60Label      matlab.ui.control.Label
        mmEditField_61                  matlab.ui.control.Label
        rsubtsubEditField_61            matlab.ui.control.NumericEditField
        rsubtsubEditField_61Label       matlab.ui.control.Label
        FieldofviewGRADIENTPLANEPanel   matlab.ui.container.Panel
        xLabel_70                       matlab.ui.control.Label
        mmLabel_70                      matlab.ui.control.Label
        mmLabel_70_2                    matlab.ui.control.Label
        FOVsubbackgroundsubEditField_70_2  matlab.ui.control.NumericEditField
        FOVsubbackgroundsubEditField_70  matlab.ui.control.NumericEditField
        FOVsubbackgroundsubEditField_70Label  matlab.ui.control.Label
        ParaxialApproximationErrorUIAxes  matlab.ui.control.UIAxes
        FOVProjectionUIAxes             matlab.ui.control.UIAxes
        BOSsetupcharacteristicsPanel    matlab.ui.container.Panel
        CompareSwitch                   matlab.ui.control.Switch
        CompareSwitchLabel              matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        mmLabel_16                      matlab.ui.control.Label
        kgmsup4supLabel                 matlab.ui.control.Label
        GeometricalInputsPanel          matlab.ui.container.Panel
        xLabel_4                        matlab.ui.control.Label
        mmLabel_2                       matlab.ui.control.Label
        mmLabel                         matlab.ui.control.Label
        IWEditField                     matlab.ui.control.NumericEditField
        IWLabel                         matlab.ui.control.Label
        pxLabel_8                       matlab.ui.control.Label
        ResolutionEditField_8           matlab.ui.control.NumericEditField
        ResolutionEditField_7           matlab.ui.control.NumericEditField
        ResolutionEditFieldLabel_4      matlab.ui.control.Label
        ZsubgradientsubEditField        matlab.ui.control.NumericEditField
        ZsubgradientsubLabel            matlab.ui.control.Label
        mmLabel_15                      matlab.ui.control.Label
        EditFieldPortrait_10            matlab.ui.control.Label
        EditFieldPortrait_12            matlab.ui.control.Label
        EditFieldPortrait_11            matlab.ui.control.Label
        EditFieldPortrait_13            matlab.ui.control.Label
        ObjectivePanel                  matlab.ui.container.Panel
        fsubselectedsubEditField        matlab.ui.control.NumericEditField
        mmEditFieldLabel_2              matlab.ui.control.Label
        f_rangeEditField_2              matlab.ui.control.NumericEditField
        fromLabel                       matlab.ui.control.Label
        toLabel                         matlab.ui.control.Label
        fsubselectedsubLabel            matlab.ui.control.Label
        f_rangeEditField                matlab.ui.control.NumericEditField
        f_rangeEditFieldLabel           matlab.ui.control.Label
        fEditField                      matlab.ui.control.NumericEditField
        fLabel                          matlab.ui.control.Label
        EditFieldPortrait_6             matlab.ui.control.Label
        EditFieldPortrait_8             matlab.ui.control.Label
        EditFieldPortrait_7             matlab.ui.control.Label
        EditFieldPortrait_9             matlab.ui.control.Label
        CameraPanel_3                   matlab.ui.container.Panel
        mumLabel                        matlab.ui.control.Label
        xLabel_3                        matlab.ui.control.Label
        pxLabel                         matlab.ui.control.Label
        pxLabel_2                       matlab.ui.control.Label
        PixelsizeEditField              matlab.ui.control.NumericEditField
        PixelsizeEditFieldLabel         matlab.ui.control.Label
        ResolutionEditField_6           matlab.ui.control.NumericEditField
        ResolutionEditField_5           matlab.ui.control.NumericEditField
        ResolutionEditFieldLabel_3      matlab.ui.control.Label
        EditFieldPortrait_5             matlab.ui.control.Label
        EditFieldPortrait_3             matlab.ui.control.Label
        EditFieldPortrait_4             matlab.ui.control.Label
        GradientregionthicknessestimationEditField  matlab.ui.control.NumericEditField
        GradientregionthicknessestimationEditFieldLabel  matlab.ui.control.Label
        DensitygradientestimationEditField  matlab.ui.control.NumericEditField
        DensitygradientestimationEditFieldLabel  matlab.ui.control.Label
        EditFieldPortrait_1             matlab.ui.control.Label
        EditFieldPortrait_2             matlab.ui.control.Label
        Image                           matlab.ui.control.Image
    end

    
    properties (Access = private)
        %{
        SavingData table structure:
        {SavingData:
            {ComparisonData: Data that are necessary for the comparison (table)
                - f_num_plot
                - r_t_plot
                - f_num_selected
                - r_t_selected
                - r_IP
                - FOV_back_x
                - delta_X}
            {OnlySavingData: Data that only needs to be saved (table)
                - d_rho_d_x
                - delta_Z_grad
                - res_x
                - res_y
                - l_px
                - f
                - f_num_min
                - f_num_max
                - f_num_selected
                - Z_grad
                - FOV_x
                - FOV_y
                - IW}
            {ExtraData: Additional data that are extracted
                - M
                - Z_lens
                - delta_diffraction_px
                - bk_dpi
                - FOV_back_x
                - FOV_back_y
                - FOV_grad_x
                - FOV_grad_y}}
        %}
        %{
        Setup1_data table structure (same of Setup2_data and Setup3_data):
        {Setup1_data:
            {OnOff: {'on', 'off'} }
            {Name: only the name }
            {Filename: name+path }
            {ComparisonData: Data that are necessary for the comparison (table)
                - f_num_plot
                - r_t_plot
                - f_num_selected
                - r_t_selected
                - r_IP
                - FOV_back_x
                - delta_X}}
        Purpose: the data for each setup are open and locally saved on
            this parameters. Then, after each new 'data load' the
            plotting function uses the previously stored data to
            generate the new plot.
        %}
        %{
        Plot
        Purpose: the vector stores the information regarding the plots
            displayed. If the plot is on (something is plotted), the
            value assigned to the relative position on the vector is
            "true", otherwise is "false". The assigned positions are:
                - plot(1,1) : app.OpticResolutionUIAxes
                - plot(1,2) : app.ParaxialApproximationErrorUIAxes
                - plot(1,3) : app.FOVProjectionUIAxes
        %}
        %{
        lgd_on
        Purpose: the vector stores the information regarding the plot
            'app.FOVProjectionUIAxes':
                - lgd_on{1} : if 'true', the legend is shown/activated in
                    the plot
                - lgd_on{2} : stores the legend properties
        %}
        %{
        txt_on
        Purpose: the vector stores the information regarding the plots
            displayed. If the plot is on (something is plotted), the
            value assigned to the relative position on the vector is
            "true", otherwise is "false". The assigned positions are:
                - txt_on{1} : if 'true', the text are shown/activated in
                    the plot
                - txt_on{2} : stores the text properties of FOV_grad_x
                - txt_on{3} : stores the text properties of FOV_grad_y
                - txt_on{4} : stores the text properties of FOV_back_x
                - txt_on{5} : stores the text properties of FOV_back_y
        %}
        %{
        warning
        Purpose: the figure is used by the code as a warning dialogue.
            It is generated as a property and then immediately hidden
            by the 'startupFcn' function. In this way the figure
            exists and no errors are obtained the first time
            the dialogue is activated (when the presence of the
            warining dialogue is checked in the 'warning_dialog'
            function).
        %}
        %{
        quit
        Purpose: the figure is used by the code as a asking dialogue.
            It is generated as a property and then immediately hidden
            by the 'startupFcn' function. At the moment this property
            is not strictly necessary but makes the code cleaner.
        %}
        SavingData  % type: 'table'
        Setup1_data % type: 'table'
        Setup2_data % type: 'table'
        Setup3_data % type: 'table'
        Plot = false(1,3); % type: 'logical'
        lgd_on = {true,''}; % type: 'cell'
        txt_on = {true,'','','',''}; % type: 'cell'
        warning = uifigure; % type: 'matlab.ui.Figure'
        quit = uifigure; % type: 'matlab.ui.Figure'
    end
    
    methods (Access = private)
        
        function comparison_plot_fnc_MOTHER(app)
            %{
            This function generates the plots for the comparison. Every
            setup section is checked and in case it is not bypassed, the
            respective plot is generated.
            The plot generation is performed through the use of the
            function 'app.comparison_plot_fnc_CHILD' providing as input the
            tables:
                - {data :
                    {linex : abscissa coordinate of the resolution plot}
                    {liney : ordinate coordinate of the resolution plot}
                    {pointx : abscissa coordinate of the resolution working point}
                    {pointy : ordinate coordinate of the resolution working point}}
                - {font :
                    {lineColor : line color of the resolution plot}
                    {lineThickness : line tickness of the resolution plot}
                    {pointType : point marker type of the resolution working point}
                    {pointColor : point marker color of the resolution working point}
                    {pointColorEdge : point marker edge color of the resolution working point}
                    {pointSize : point marker size of the resolution working point}}
                - {name :
                    {line : resolution plot line name in legend}
                    {point : resolution working point name in legend}}
            %}
            % Plot clearing (content and legend)
            cla (app.OpticResolutionUIAxes);
            legend (app.OpticResolutionUIAxes,'off');
            % Plot layout update
            app.plot_comparisonON_update();
            %
            if isequal(app.Setup1_data.OnOff,"off") && ...
                    isequal(app.Setup2_data.OnOff,"off") && ...
                    isequal(app.Setup3_data.OnOff,"off")
                app.Plot(1) = false;
            else
                app.Plot(1) = true;
            end
            % Setup1 section check
            if isequal(app.Setup1_data.OnOff,"on")
                data.linex = app.Setup1_data.ComparisonData.f_num_plot;
                data.liney = app.Setup1_data.ComparisonData.r_t_plot;
                data.pointx = app.Setup1_data.ComparisonData.f_num_selected;
                data.pointy = app.Setup1_data.ComparisonData.r_t_selected;
                font.lineColor = 'b';
                font.lineThickness = 1.5;
                font.pointType = 'o';
                font.pointColor = 'b';
                font.pointColorEdge = 'k';
                font.pointSize = 10;
                name.line = 'Setup 1';
                name.point = 'Setup 1 - Working point';
                app.comparison_plot_fnc_CHILD(data,font,name);
            end
            % Setup2 section check
            if isequal(app.Setup2_data.OnOff,"on")
                data.linex = app.Setup2_data.ComparisonData.f_num_plot;
                data.liney = app.Setup2_data.ComparisonData.r_t_plot;
                data.pointx = app.Setup2_data.ComparisonData.f_num_selected;
                data.pointy = app.Setup2_data.ComparisonData.r_t_selected;
                font.lineColor = 'r';
                font.lineThickness = 1.5;
                font.pointType = 'o';
                font.pointColor = 'r';
                font.pointColorEdge = 'k';
                font.pointSize = 10;
                name.line = 'Setup 2';
                name.point = 'Setup 2 - Working point';
                app.comparison_plot_fnc_CHILD(data,font,name);
            end
            % Setup3 section check
            if isequal(app.Setup3_data.OnOff,"on")
                data.linex = app.Setup3_data.ComparisonData.f_num_plot;
                data.liney = app.Setup3_data.ComparisonData.r_t_plot;
                data.pointx = app.Setup3_data.ComparisonData.f_num_selected;
                data.pointy = app.Setup3_data.ComparisonData.r_t_selected;
                font.lineColor = 'm';
                font.lineThickness = 1.5;
                name.line = 'Setup 3';
                font.pointType = 'o';
                font.pointColorEdge = 'k';
                font.pointColor = 'm';
                font.pointSize = 10;
                name.point = 'Setup 3 - Working point';
                app.comparison_plot_fnc_CHILD(data, font, name);
            end
            % Plot legend generation
            hold (app.OpticResolutionUIAxes,'off')
            legend (app.OpticResolutionUIAxes)
        end
        
        function comparison_plot_fnc_CHILD(app, data, font, name)
            %{
            This function produces the plots for the comparison.
            Specifically it generates the plot of a single setup given as
            inputs:
                - data: data to plot as a MATLAB table organized as
                    shown in comparison_plot_fnc_MOTHER(app)
                - font: font to plot the data with, as a MATLAB table
                    organized as shown in comparison_plot_fnc_MOTHER(app)
                - name: name to plot the data with, as a MATLAB table
                    organized as shown in comparison_plot_fnc_MOTHER(app)
            %}
            % Line
            plot(app.OpticResolutionUIAxes, data.linex, data.liney, ...
                'Color', font.lineColor, ...
                "LineWidth", font.lineThickness, ...
                "DisplayName", name.line)
            hold(app.OpticResolutionUIAxes,"on")
            % Point
            plot(app.OpticResolutionUIAxes, data.pointx, data.pointy, ...
                font.pointType, "MarkerEdgeColor", font.pointColorEdge, ...
                "MarkerFaceColor", font.pointColor, ...
                "MarkerSize", font.pointSize, ...
                "DisplayName", name.point)
            
        end
        
        function setup1_clear(app)
            %{
            The function clears all the editable fields of the setup1
            section and enable the plot by-pass for the setup1 section.
            In addition, the clear button is disabled.
            %}
            % Editable field clearing
            app.ConfEditField.Value = '';
            app.rsubtsubEditField.Value = 0;
            app.rsubIPsubEditField.Value = 0;
            app.fsubsubEditField.Value = 0;
            app.FOVsubeffsubEditField_2.Value = 0;
            app.DeltaXEditField_2.Value = 0;
            % Plot by-pass enabling
            app.Setup1_data.OnOff = "off";
            % Clear button disabled
            app.ClearButton.Enable = "off";
        end
        
        function setup2_clear(app)
            %{
            The function clears all the editable fields of the setup2
            section and enable the plot by-pass for the setup2 section.
            In addition, the clear button is disabled.
            %}
            % Editable field clearing
            app.ConfEditField_2.Value = '';
            app.rsubtsubEditField_3.Value = 0;
            app.rsubIPsubEditField_3.Value = 0;
            app.fsubsubEditField_2.Value = 0;
            app.FOVsubeffsubEditField_3.Value = 0;
            app.DeltaXEditField_3.Value = 0;
            % Plot by-pass enabling
            app.Setup2_data.OnOff = "off";
            % Clear button disabled
            app.ClearButton_2.Enable = "off";
        end
        
        function setup3_clear(app)
            %{
            The function clears all the editable fields of the setup3
            section and enable the plot by-pass for the setup3 section.
            In addition, the clear button is disabled.
            %}
            % Editable field clearing
            app.ConfEditField_3.Value = '';
            app.rsubtsubEditField_4.Value = 0;
            app.rsubIPsubEditField_4.Value = 0;
            app.fsubsubEditField_3.Value = 0;
            app.FOVsubeffsubEditField_4.Value = 0;
            app.DeltaXEditField_4.Value = 0;
            % Plot by-pass enabling
            app.Setup3_data.OnOff = "off";
            % Clear button disabled
            app.ClearButton_3.Enable = "off";
        end
        
        function output_clearing(app)
            %{
            The function clears all the editable fields of the
            'Resolution' and 'Setup characteristics' windows.
            %}
            % 'Resolution'
            app.rsubtsubEditField_2.Value = 0;
            app.rsubIPsubEditField_2.Value = 0;
            app.DeltaXEditField.Value = 0;
            app.MEditField.Value = 0;
            app.pixelprojEditField.Value = 0;
            app.FOVsubeffsubEditField.Value = 0;
            % 'Setup characteristics'
            app.ZsubgradsubEditField_50.Value = 0;
            app.ZsublenssubEditField_50.Value = 0;
            app.MEditField_50.Value = 0;
            app.pixelprojEditField_50.Value = 0;
            app.epsilonsubparaxialapproxmaxsubEditField_50.Value = 0;
            app.rsubtsubEditField_61.Value = 0;
            app.rsubIPsubEditField_60.Value = 0;
            app.DeltaXEditField_40.Value = 0;
            app.IWEditField_41.Value = 0;
            app.FOVsubbackgroundsubEditField_70.Value = 0;
            app.FOVsubbackgroundsubEditField_70_2.Value = 0;
            app.FOVsubeffsubEditField_71.Value = 0;
            app.FOVsubeffsubEditField_71_2.Value = 0;
        end
        
        function plot_comparisonON_update(app)
            %{
            Comparison configuration ON.
            This function updates the resolution plot appearence,
            specifically:
                - The plot title.
            
            NOTE: The function is called once the first plot is
            generated (not at the switch position change).
            %}
            app.OpticResolutionUIAxes.Title.String = "Optic resolution - Comparison"; % Title update
        end
        
        function plot_comparisonOFF_update(app)
            %{
            Comparison configuration OFF.
            This function updates the resolution plot appearence,
            specifically:
                - The plot title.
            %}
            app.OpticResolutionUIAxes.Title.String = "Optic resolution"; % Title update
        end
        
        function switch_comparisonON_update(app)
            %{
            Comparison configuration ON.
            This function updates:
                - The background color of the switch text
                - The switch frame label color
                - The 'Setups comparison' section background.
            %}
            app.CompareSwitchLabel.BackgroundColor = [0.39,0.83,0.07]; % Switch text background update
            app.Label.BackgroundColor = [0.65,0.65,0.65]; % Switchbackground label update
            app.SetupscomparisonPanel.BackgroundColor = [0.65,0.65,0.65]; % 'Setups comparison' background update
        end
        
        function switch_comparisonOFF_update(app)
            %{
            Comparison configuration OFF.
            This function updates:
                - The background color of the switch text
                - The switch frame label color
                - The 'Setups comparison' section background.
            %}
            app.CompareSwitchLabel.BackgroundColor = "none"; % Switch text background update
            app.Label.BackgroundColor = [0.94,0.94,0.94]; % Switchbackground label update
            app.SetupscomparisonPanel.BackgroundColor = [0.94,0.94,0.94]; % 'Setups comparison' background update
        end
        
        function setup1_comparisonON_update(app)
            %{
            Comparison configuration ON.
            This function updates the setup2 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            COLOR THEME: BLUE
            %}
            app.Setup1Panel.BackgroundColor = [0.29,0.72,1.00]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton.BackgroundColor = [0.00,0.25,0.42]; % Background color
            app.LoadconfigurationButton.FontColor = [1.00,1.00,1.00]; % Font color update
            % 'clear' button updates
            app.ClearButton.BackgroundColor = [0.00,0.25,0.42]; % Background color
            app.ClearButton.FontColor = [1.00,1.00,1.00]; % Font color update
        end
        
        function setup2_comparisonON_update(app)
            %{
            Comparison configuration ON.
            This function updates the setup1 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            COLOR THEME: RED
            %}
            app.Setup2Panel.BackgroundColor = [1.00,0.29,0.29]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton_2.BackgroundColor = [0.42,0.00,0.08]; % Background color
            app.LoadconfigurationButton_2.FontColor = [1.00,1.00,1.00]; % Font color update
            % 'clear' button updates
            app.ClearButton_2.BackgroundColor = [0.42,0.00,0.08]; % Background color
            app.ClearButton_2.FontColor = [1.00,1.00,1.00]; % Font color update
        end
        
        function setup3_comparisonON_update(app)
            %{
            Comparison configuration ON.
            This function updates the setup3 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            COLOR THEME: PURPLE
            %}
            app.Setup3Panel.BackgroundColor = [0.92,0.29,1.00]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton_3.BackgroundColor = [0.36,0.00,0.42]; % Background color
            app.LoadconfigurationButton_3.FontColor = [1.00,1.00,1.00]; % Font color update
            % 'clear' button updates
            app.ClearButton_3.BackgroundColor = [0.36,0.00,0.42]; % Background color
            app.ClearButton_3.FontColor = [1.00,1.00,1.00]; % Font color update
        end
        
        function setup1_comparisonOFF_update(app)
            %{
            Comparison configuration OFF.
            This function updates the setup1 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            %}
            app.Setup1Panel.BackgroundColor = [0.94,0.94,0.94]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.LoadconfigurationButton.FontColor = [0.00,0.00,0.00]; % Font color update
            % 'clear' button updates
            app.ClearButton.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.ClearButton.FontColor = [0.00,0.00,0.00]; % Font color update
        end
        
        function setup2_comparisonOFF_update(app)
            %{
            Comparison configuration OFF.
            This function updates the setup2 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            %}
            app.Setup2Panel.BackgroundColor = [0.94,0.94,0.94]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton_2.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.LoadconfigurationButton_2.FontColor = [0.00,0.00,0.00]; % Font color update
            % 'clear' button updates
            app.ClearButton_2.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.ClearButton_2.FontColor = [0.00,0.00,0.00]; % Font color update
        end
        
        function setup3_comparisonOFF_update(app)
            %{
            Comparison configuration OFF.
            This function updates the setup3 section layout,
            specifically:
                - The section background color
                - The 'load configuration' button background and font
                    colors
                - The 'clear' button background and font colors.
            %}
            app.Setup3Panel.BackgroundColor = [0.94,0.94,0.94]; % Section background color update
            % 'load configuration' button updates
            app.LoadconfigurationButton_3.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.LoadconfigurationButton_3.FontColor = [0.00,0.00,0.00]; % Font color update
            % 'clear' button updates
            app.ClearButton_3.BackgroundColor = [0.89,0.89,0.89]; % Background color
            app.ClearButton_3.FontColor = [0.00,0.00,0.00]; % Font color update
        end
        
        function [FOV_back_x, FOV_back_y] = FOV_computation(~, l_px, ...
                res_x, res_y, FOV_x, FOV_y)
            %{
            The function recognizes the limiting dimension of the FOV
            given camera pixel size and resolution (sensor size), and
            update the FOV size accordingly.
            INPUT :
                - l_px : camera pixels size [m]
                - res_x : camera resolution x dimention []
                - res_y : camera resolution y dimention []
                - FOV_x : required FOV on the x dimention [m]
                - FOV_y : required FOV on the y dimention [m]
            OUTPUT:
                - FOV_back_x : effective FOV on the x dimention [m] ( >= FOV_x)
                - FOV_back_y : effective FOV on the x dimention [m] ( >= FOV_y)
            %}
            sensor_x = l_px*res_x; % [m] Sensor width (x component)
            sensor_y = l_px*res_y; % [m] Sensor high (y component)
            if FOV_x/sensor_x > FOV_y/sensor_y % x component is limiting
                FOV_back_x = FOV_x; % [m]
                FOV_back_y = FOV_x*sensor_y/sensor_x; % [m]
            elseif FOV_x/sensor_x < FOV_y/sensor_y % y component is limiting
                FOV_back_x = FOV_y*sensor_x/sensor_y; % [m]
                FOV_back_y = FOV_y; % [m]
            elseif FOV_x/sensor_x == FOV_y/sensor_y % perfect match
                FOV_back_x = FOV_x; % [m]
                FOV_back_y = FOV_y; % [m]
            end
        end
        
        function [r_t, diff_lim] = r_t_comp(~, l_px, M, Z_grad, Z_lens, f_numb)
            %{
            The function compute the resolution on the gradient region
            (projection of half of the uncertainty region on the
            gradient plane)
            INPUT :
                - l_px : camera pixel size [m]
                - M : system magnification []
                - Z_grad : gradient plane distance to the background [m]
                - Z_lens : lens (camera) distance to the background [m]
                - f_numb : working f-number
            OUTPUT:
                - r_t : optic resolution on the background [m]
            %}
            % Light wavelength
            lambda = 500*10^(-9); % [m]
            % Resolution computation
            diff_lim = 2.44.*f_numb.*(M+1).*lambda; % System diffarction limit [m]
            delta = sqrt(diff_lim.^2+l_px.^2); % Uncertainty region diameter on the sensor [m]
            r = delta/2; % [m]
            r_t = r.*(1-Z_grad./Z_lens)./M+Z_grad.*M./(f_numb.*(M+1)); % Optic resolution [m]
        end
        
        function parax_err = paraxial_error_plot(app, FOV_back_x, ....
                FOV_back_y, f, f_num_selected, Z_lens, limit)
            %{
            The function produces the paraxial approximation error
            plot. The error is expressed in % by doing the comparison
            (ratio) between the error due to the approximation and the
            measure obatined assuming the paraxial approximation.
            INPUTS :
                - FOV_back_x : effective FOV on the x dimention [m]
                - FOV_back_y : effective FOV on the y dimention [m]
                - f : lens focal length [m]
                - f_num_selected : working f-number
                - Z_lens : lens (camera) distance to the background [m]
                - limit : plot representation limit [%]
            OUTPUT :
                - parax_err : paraxial error % maximum value [%]
            %}
            % Lens aperture
            d_A_selected = f/f_num_selected; % [m]
            % Background positions matrix generation (position (0,0)
            % corresponds to the camera projection point on the background)
            X_pos_base = linspace(-FOV_back_x/2,FOV_back_x/2,1001); % [m]
            Y_pos_base = linspace(-FOV_back_y/2,FOV_back_y/2,length(X_pos_base)); % [m]
            ones_vector = ones(size(X_pos_base))';
            r_matrix = sqrt((ones_vector*X_pos_base).^2+((ones_vector*Y_pos_base)').^2); % Positions matrix [m]
            % Light path inclination at the background (most inclined generator line)
            beta = atan((r_matrix+d_A_selected/2)/Z_lens); % [rad]
            % Paraxial error estimation
            err_beta_spec = ((tan(beta)).^2)*100; % [%]
            N = NaN(size(err_beta_spec));
            N(find(err_beta_spec>limit)) = 0;
            err_beta_spec_not_allowed = err_beta_spec+N;
            A = NaN(size(err_beta_spec));
            A(find(err_beta_spec<=limit)) = 0;
            err_beta_spec_allowed = err_beta_spec+A;
            % Plot generation
            surf (app.ParaxialApproximationErrorUIAxes, ...
                X_pos_base, Y_pos_base, err_beta_spec_allowed, ...
                'FaceColor', [0 1 0.4], 'EdgeColor', 'none', ...
                'FaceAlpha', 0.8000);
            hold (app.ParaxialApproximationErrorUIAxes,"on")
            surf (app.ParaxialApproximationErrorUIAxes, ...
                X_pos_base, Y_pos_base, err_beta_spec_not_allowed, ...
                'FaceColor', 'r', 'EdgeColor', 'none', ...
                'FaceAlpha', 0.8000);
            str = ['{\epsilon}_% > ',num2str(limit)];
            legend (app.ParaxialApproximationErrorUIAxes, '', ...
                str,'Location','best');
            hold (app.ParaxialApproximationErrorUIAxes,"off")
            app.ParaxialApproximationErrorUIAxes.FontName = "Helvetica";
            % Paraxial error maximum value
            parax_err = max(max(err_beta_spec)); % [%]
        end
        
        function projection_plot (app,FOV_back_x,FOV_back_y,Z_grad,Z_lens)
            %{
            The function produces the projection plot. The camera FOV
            is represented at the background position (BLUE) and at
            the gradient plane position (GREEN). 4 texts are added on
            the plot to indicate the size of the FOV projection.
            INPUTS :
                - FOV_back_x : effective FOV on the x dimention [mm]
                - FOV_back_y : effective FOV on the y dimention [mm]
                - Z_lens : lens (camera) distance to the background [mm]
                - Z_lens : lens (camera) distance to the background [mm]
            Legend: it is generated and then hided in case the
                property app.lgd_on{1} is 'false'
            Texts: all the text are generated and then hided in case
                the property app.txt_on{1} is 'false'
            
            NOTE: the axis orientation is adapted to the orientation
            of the label inthe app (x and z dimentions are inverted).
            %}
            % Background FOV projection corner coordinates
            Z = [FOV_back_x, FOV_back_x; -FOV_back_x, -FOV_back_x]*0.5; % [mm]
            Y = [FOV_back_y, -FOV_back_y; FOV_back_y, -FOV_back_y]*0.5; % [mm]
            X = Z_lens*ones(2,2); % [mm]
            % Gradient plane FOV projection corner coordinates
            z = Z*(Z_lens-Z_grad)/Z_lens; % [mm]
            y = Y*(Z_lens-Z_grad)/Z_lens; % [mm]
            x = X-Z_grad; % [mm]
            % Camera position coordinates
            zcamera = 0; % [mm]
            ycamera = 0; % [mm]
            xcamera = 0; % [mm]
            % Corner projection connecting lines
            zline = zeros(5,3);
            yline = zeros(5,3);
            xline = zeros(5,3);
            for k = 1:4
                zline(k,:) = [Z(k), z(k), zcamera];
                yline(k,:) = [Y(k), y(k), ycamera];
                xline(k,:) = [X(k), x(k), xcamera];
            end
            xline(5,:) = xline(4,:);
            % Plot generation
            surf(app.FOVProjectionUIAxes, X, Y, Z, 'EdgeColor', 'b', ...
                'LineWidth', 1.5, 'FaceColor', [0.15,0.82,0.99]);
            hold (app.FOVProjectionUIAxes,"on")
            surf(app.FOVProjectionUIAxes, x, y, z, 'EdgeColor', ...
                [0.00,0.59,0.08], 'LineWidth', 1.5, 'FaceColor', [0.65,0.99,0.15])
            plot3(app.FOVProjectionUIAxes, xcamera, ycamera, zcamera, ...
                'o', 'Color', 'r', 'MarkerEdgeColor', 'r', 'LineWidth', ...
                1.5, "MarkerFaceColor", [1.00,0.53,0.00]);
            for k = 1:4
                plot3 (app.FOVProjectionUIAxes, xline(k,:), ...
                    yline(k,:), zline(k,:), ':', 'Color', 'r');
            end
            plot3 (app.FOVProjectionUIAxes, xline(5,:), ...
                yline(5,:), zline(5,:), ':', 'Color', 'k');
            view(app.FOVProjectionUIAxes,[-70 7])
            title (app.FOVProjectionUIAxes, 'Setup field of view projection','   ')
            hold (app.FOVProjectionUIAxes, "off")
            axis (app.FOVProjectionUIAxes, "on")
            axis (app.FOVProjectionUIAxes, "equal")
            % Legend generation
            app.lgd_on{2} = legend (app.FOVProjectionUIAxes, ...
                'Background FOV', 'Gradient plane FOV', ...
                'Camera', 'Location', 'northwest','Visible','on');
            if ~isequal(app.lgd_on{1},true) % Disabler active
                prov = app.lgd_on{2};
                prov.Visible = "off";
            end
            % Text generation
            % FOV gradient plane 'x' direction
            app.txt_on{2} = text (app.FOVProjectionUIAxes, ...
                (Z_lens-Z_grad), 0, 0.55*FOV_back_x*(Z_lens-Z_grad)/Z_lens, ...
                [num2str(FOV_back_x*(Z_lens-Z_grad)/Z_lens,3),' mm'], ...
                "HorizontalAlignment", "center", "VerticalAlignment", ...
                "bottom", "FontWeight", "bold", "FontSize", 10, ...
                "BackgroundColor", "w", "Color", "k", "Margin", 1, ...
                "EdgeColor","k","Visible","on");
            % FOV gradient plane 'y' direction
            app.txt_on{3} = text (app.FOVProjectionUIAxes, ...
                (Z_lens-Z_grad), -0.55*FOV_back_y*(Z_lens-Z_grad)/Z_lens, ...
                0, [num2str(FOV_back_y*(Z_lens-Z_grad)/Z_lens,3),' mm'], ...
                "HorizontalAlignment", "left", "VerticalAlignment", ...
                "middle", "FontWeight", "bold", "FontSize", 10, ...
                "BackgroundColor", "w", "Color", "k", "Margin", 1, ...
                "EdgeColor","k","Visible","on");
            % FOV background 'x' direction
            app.txt_on{4} = text (app.FOVProjectionUIAxes, Z_lens, ...
                0, 0.55*FOV_back_x, [num2str(FOV_back_x,3),' mm'], ...
                "HorizontalAlignment", "center", "VerticalAlignment", ...
                "bottom", "FontWeight", "bold", "FontSize", 10, ...
                "BackgroundColor", "w", "Color", "k", "Margin", 1, ...
                "EdgeColor","k","Visible","on");
            % FOV background 'y' direction
            app.txt_on{5} = text (app.FOVProjectionUIAxes, Z_lens,...
                -0.55*FOV_back_y, 0, [num2str(FOV_back_y,3),' mm'], ...
                "HorizontalAlignment", "left", "VerticalAlignment", ...
                "middle", "FontWeight", "bold", "FontSize", 10, ...
                "BackgroundColor", "w", "Color", "k", "Margin", 1, ...
                "EdgeColor","k","Visible","on");
            if ~isequal(app.txt_on{1},true) % Disabler active
                prov_1 = app.txt_on{2};
                prov_1.Visible = "off";
                prov_2 = app.txt_on{3};
                prov_2.Visible = "off";
                prov_3 = app.txt_on{4};
                prov_3.Visible = "off";
                prov_4 = app.txt_on{5};
                prov_4.Visible = "off";
            end
        end
        
        function pass = compute_bypass_fnc(~, d_rho_d_x, ...
                delta_Z_grad, res_x, res_y, l_px, f, f_num_min, ...
                f_num_max, f_num_selected, Z_grad, FOV_x, FOV_y, IW)
            %{
            The function allows to verify if all the editable fields
            in the BOS setup characteristics section are filled with
            non zero quantities. The quantities red on the editable
            fields are transfered through the function input.
            INPUT :
                - d_rho_d_x = app.DensitygradientestimationEditField.Value
                - delta_Z_grad = app.GradientregionthicknessestimationEditField.Value
                - res_x = app.ResolutionEditField_5.Value
                - res_y = app.ResolutionEditField_6.Value
                - l_px = app.PixelsizeEditField.Value
                - f = app.fEditField.Value
                - f_num_min = app.f_rangeEditField.Value
                - f_num_max = app.f_rangeEditField_2.Value
                - f_num_selected = app.fsubselectedsubEditField.Value
                - Z_grad = app.ZsubgradientsubEditField.Value
                - FOV_x = app.ResolutionEditField_7.Value
                - FOV_y = app.ResolutionEditField_8.Value
                - IW = app.IWEditField.Value
            OUTPUT:
                - pass : equal to "on" in case all the editable fields
                    are non zero
            %}
            % Vector containing all the input section quantities (BOS
            % setup characteristics editable fields)
            control = [d_rho_d_x, delta_Z_grad, res_x, res_y, l_px, f, ...
                f_num_min, f_num_max, f_num_selected, Z_grad, FOV_x, FOV_y, IW];
            % Input section  quantities check
            if sum (control ~= 0) == length(control)
                pass = "on";
            else
                pass = "off";
            end
        end
        
        function warning_dialog(app,text,type)
            %{
            This function generates a warning dialogue accordingly to
            the inputs.
            INPUTS :
                - text: text of the warning dialogue
                - type: title and symbol type of the warning dialogue
                    (see 'warning' function documentation for the
                    sintax)
            The 'waitfor' command ensures that in the callback where
            this function is recalled, all the following steps are
            enabled only after the closure of the dialogue.
            %}
            % Option settings
            opts = struct('WindowStyle','modal',... 
                'Interpreter','tex');
            % Check if a previous warning dialogue is open
            if isvalid(app.warning) % A previous dialogue was open
                close(app.warning)
                app.warning = warndlg(text,type,opts);
            else % No previous dialogue are open
                app.warning = warndlg(text,type,opts);
            end
            % Function to ensure that the following code part will occur
            % after the closure of the info dialogue
            waitfor(app.warning);
        end
        
        function check = INPUT_plot_verify_fcn(app)
            %{
            The function verify if the saved configuration corresponds
            to the editable fields values in the 'BOS setup
            characteristics' section. If they corresponds, the OUTPUT
            is "on", otherwise it is "off".
            %}
            % The tollerance is set to avoid errors associated to the
            % MATLAB numerical error (before they are stored the data
            % are/could be manipulated)
            tollerance = 10^(-10);
            if abs(app.SavingData.OnlySavingData.d_rho_d_x - app.DensitygradientestimationEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.delta_Z_grad - app.GradientregionthicknessestimationEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.res_x - app.ResolutionEditField_5.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.res_y - app.ResolutionEditField_6.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.l_px - app.PixelsizeEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.f - app.fEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.f_num_min - app.f_rangeEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.f_num_max - app.f_rangeEditField_2.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.f_num_selected - app.fsubselectedsubEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.Z_grad - app.ZsubgradientsubEditField.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.FOV_x - app.ResolutionEditField_7.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.FOV_y - app.ResolutionEditField_8.Value)<tollerance && ...
                    abs(app.SavingData.OnlySavingData.IW - app.IWEditField.Value)<tollerance
                check = "on"; % Agreement detected
            else
                check = "off"; % Agreement not detected
            end
        end
        
        function check = f_numb_plot_verify_fnc(app)
            %{
            The function verify if the f-number range provided
            includes the f-number selected (these three values are
            inserted in the editable fields in 'BOS setup
            characteristics' section). In case this is true, the
            OUTPUT is "on", otherwise it is "off".
            %}
            if app.f_rangeEditField.Value <= app.fsubselectedsubEditField.Value ...
                    && app.fsubselectedsubEditField.Value <= app.f_rangeEditField_2.Value
                check = "on"; % Range limits respected
            else
                check = "off"; % Range limits not respected
            end
        end
        
        function [d_rho_d_x, delta_Z_grad, camera_resolution_x, ...
              camera_resolution_y, camera_resolution, l_px, f, ...
              f_number_selected, r_t_selected, IW, r_IP, M, Z_lens, ...
              delta_diffraction, pixel_projection_size, Z_grad, delta_X,...
              FOV_background_x, FOV_background_y,  FOV_gradient_x,...
              FOV_gradient_y, FOV, f_number_plot, r_t_plot, ...
              BOS_setup, BOS_background_generator] = data_unfold(app)
            %{
            The function prepares the data to be exported. The data
            are stored in table variables organised as:
                - d_rho_d_x : value (double) - unit (char)
                - delta_Z_grad : value (double) - unit (char)
                - camera_resolution_x : value (double) - unit (char)
                - camera_resolution_y : value (double) - unit (char)
                - camera_resolution : table(camera_resolution_x, camera_resolution_x)
                - l_px : value (double) - unit (char)
                - f : value (double) - unit (char)
                - f_number_selected : value (double) - unit (char)
                - r_t_selected : value (double) - unit (char)
                - IW : value (double) - unit (char)
                - r_IP : value (double) - unit (char)
                - M : value (double) - unit (char)
                - Z_lens : value (double) - unit (char)
                - delta_diffraction : value (double) - unit (char)
                - pixel_projection_size : value (double) - unit (char)
                - Z_grad : value (double) - unit (char)
                - delta_X : value (double) - unit (char)
                - FOV_background_x : value (double) - unit (char)
                - FOV_background_y : value (double) - unit (char)
                - FOV_gradient_x : value (double) - unit (char)
                - FOV_gradient_y : value (double) - unit (char)
                - FOV : table(FOV_background_x, FOV_background_y, FOV_gradient_y, FOV_gradient_y)
                - f_number_plot : values shown in the resolution plot (double) - unit (char)
                - r_t_plot : values shown in the resolution plot(double) - unit (char)
                - BOS_setup : name (char) value (double) - unit (char)
                - BOS_background_generator : name (char) value (double) -
                    unit (char).
            BOS_setup: stores the variables that are exported through
                the button 'Setup data and performance' (export menu).
            BOS_background_generator: stores the variables that are
                exported through the button 'Background generation
                data' (export menu).
            %}
            % Storing variables inizialization (random quantities)
            Quantities_BOS_setup = ["a";"b"];
            Values_BOS_setup = [1;2];
            Units_BOS_setup = ["c";"d"];
            Quantities_BOS_background_generator = ["a";"b"];
            Values_BOS_background_generator = [1;2];
            Units_BOS_background_generator = ["c";"d"];
            % d_rho_d_x
            Value = app.SavingData.OnlySavingData.d_rho_d_x;
            Unit = "kg/m^4";
            d_rho_d_x = table(Value,Unit);
            Quantities_BOS_setup(1) = "d_rho_d_x";
            Values_BOS_setup(1) = Value;
            Units_BOS_setup(1) = Unit;
            % delta_Z_grad
            Value = app.SavingData.OnlySavingData.delta_Z_grad;
            Unit = "mm";
            delta_Z_grad = table(Value,Unit);
            Quantities_BOS_setup(2) = "delta_Z_grad";
            Values_BOS_setup(2) = Value;
            Units_BOS_setup(2) = Unit;
            % camera_resolution_x
            Value = app.SavingData.OnlySavingData.res_x;
            Unit = "px";
            camera_resolution_x = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "camera_resolution_x";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % camera_resolution_y
            Value  = app.SavingData.OnlySavingData.res_y;
            Unit = "px";
            camera_resolution_y = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "camera_resolution_y";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % camera_resolution (only workspace)
            Quantity = ["camera_resolution_x"; "camera_resolution_y"];
            Value = [app.SavingData.OnlySavingData.res_x; app.SavingData.OnlySavingData.res_y];
            Unit = ["px"; "px"];
            camera_resolution = table(Quantity, Value, Unit);
            % l_px
            Value = app.SavingData.OnlySavingData.l_px;
            Unit = "micron";
            l_px = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "l_px";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(5) = "l_px";
            Values_BOS_background_generator(5) = Value;
            Units_BOS_background_generator(5) = Unit;
            % f
            Value = app.SavingData.OnlySavingData.f;
            Unit = "mm";
            f = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "f";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % f_number_selected
            Value = app.SavingData.ComparisonData.f_num_selected;
            Unit = "[-]";
            f_number_selected = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "f_number_selected";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % r_t_selected
            Value = app.SavingData.ComparisonData.r_t_selected;
            Unit = "mm";
            r_t_selected = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "r_t_selected";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % IW
            Value = app.SavingData.OnlySavingData.IW;
            Unit = "px";
            IW = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "IW";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(3) = "IW";
            Values_BOS_background_generator(3) = Value;
            Units_BOS_background_generator(3) = Unit;
            % r_IP
            Value = app.SavingData.ComparisonData.r_IP;
            Unit = "mm";
            r_IP = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "r_IP";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % M
            Value = app.SavingData.ExtraData.M;
            Unit = "[-]";
            M = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "M";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(4) = "M";
            Values_BOS_background_generator(4) = Value;
            Units_BOS_background_generator(4) = Unit;
            % Z_lens
            Value = app.SavingData.ExtraData.Z_lens;
            Unit = "mm";
            Z_lens = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "Z_lens";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % delta_diffraction
            Value = app.SavingData.ExtraData.delta_diffraction_px;
            Unit = "px";
            delta_diffraction = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "delta_diffraction";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(7) = "delta_diffraction";
            Values_BOS_background_generator(7) = Value;
            Units_BOS_background_generator(7) = Unit;
            % pixel_projection_size
            Value = app.SavingData.ExtraData.bk_dpi;
            Unit = "dpi";
            pixel_projection_size = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "pixel_projection_size";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(6) = "pixel_projection_size";
            Values_BOS_background_generator(6) = Value;
            Units_BOS_background_generator(6) = Unit;
            % Z_grad
            Value = app.SavingData.OnlySavingData.Z_grad;
            Unit = "mm";
            Z_grad = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "Z_grad";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % delta_X
            Value = app.SavingData.ComparisonData.delta_X;
            Unit = "px";
            delta_X = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "delta_X";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % FOV_background_x
            Value = app.SavingData.ExtraData.FOV_back_x;
            Unit = "mm";
            FOV_background_x = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "FOV_background_x";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(1) = "FOV_background_x";
            Values_BOS_background_generator(1) = Value;
            Units_BOS_background_generator(1) = Unit;
            % FOV_background_y
            Value = app.SavingData.ExtraData.FOV_back_y;
            Unit = "mm";
            FOV_background_y = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "FOV_background_y";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            Quantities_BOS_background_generator(2) = "FOV_background_x";
            Values_BOS_background_generator(2) = Value;
            Units_BOS_background_generator(2) = Unit;
            % FOV_gradient_x
            Value = app.SavingData.ExtraData.FOV_grad_x;
            Unit = "mm";
            FOV_gradient_x = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "FOV_gradient_x";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % FOV_gradient_y
            Value = app.SavingData.ExtraData.FOV_grad_x;
            Unit = "mm";
            FOV_gradient_y = table(Value,Unit);
            Quantities_BOS_setup(end+1) = "FOV_gradient_y";
            Values_BOS_setup(end+1) = Value;
            Units_BOS_setup(end+1) = Unit;
            % FOV (only workspace)
            Quantity = ["FOV_background_x"; "FOV_background_y"; ...
                "FOV_gradient_x"; "FOV_gradient_y"];
            Value = [app.SavingData.ExtraData.FOV_back_x; ...
                app.SavingData.ExtraData.FOV_back_y; ...
                app.SavingData.ExtraData.FOV_grad_x; ...
                app.SavingData.ExtraData.FOV_grad_y];
            Unit = ["px"; "px"; "px"; "px"];
            FOV = table(Quantity, Value, Unit);
            % f_number_plot (only workspace)
            Value = app.SavingData.ComparisonData.f_num_plot;
            Unit = "[-]";
            f_number_plot = table(Value,Unit);
            % r_t_plot (only workspace)
            Value = app.SavingData.ComparisonData.r_t_plot;
            Unit = "mm";
            r_t_plot = table(Value,Unit);
            % BOS_setup (Table for .txt and .xlsx)
            Quantity = Quantities_BOS_setup;
            Value = Values_BOS_setup;
            Unit = Units_BOS_setup;
            BOS_setup = table(Quantity, Value, Unit);
            % BOS_background_generator
            Quantity = Quantities_BOS_background_generator;
            Value = Values_BOS_background_generator;
            Unit = Units_BOS_background_generator;
            BOS_background_generator = table(Quantity, Value, Unit);
        end
        
        function plot_saving_fnc(app,Plot,Plot_onoff)
            %{
            The function allows to save (export menu) a plot displayed
            in the app.
            The INPUTS are:
                - Plot : stores the plot name in the app (UIaxes type)
                - Plot_onoff : if false, no plot is displayed and all
                    the saving process by-passed. If true, the saving
                    process is performed.
            As for all the saving/exporting processes, a check on the
            agreement between the displayed data in the section 'BOS
            setup characteristics' and the saved data, is done. In
            case they differ, a warning dialogue is generated. This
            check is not performed in 'Comparison mode' ('Comparison'
            switch on "Off").
            The saving is done by using the function 'copyUIAxes'.
            The format '.fig', '.jpg' and '.png' are avaliable.
            References: 
                - Adam Danz (2022). copyUIAxes
                (https://www.mathworks.com/matlabcentral/fileexchange/73103-copyuiaxes),
                MATLAB Central File Exchange. Retrieved January 24, 2022
            %}
            % Check if something is ploted in the figure
            if ~isequal(Plot_onoff,true) % Plot is empty
                %
                text = ['\bf No plot is present to be saved', ...
                    '\rm. Please close the message or select ', ...
                    'OK to suspend the operation.'];
                % Generation of the info dialogue
                app.warning_dialog(text,'Warning');
            else  % Plot is not empty
                % Displayed and going to be saved data agreement check
                if isequal(app.CompareSwitch.Value,"Off")
                    check = app.INPUT_plot_verify_fcn();
                    if isequal(check,"off") % No total agreement
                        % Text shown in the info dialogue
                        text = ['Only the last generated plot is saved. Please ', ...
                            'note that the saved data differ from the current ', ...
                            'data in section', '\bf BOS setup characteristics', ...
                            '\rm. Please close the message or select OK to proceed.'];
                        % Generation of the info dialogue
                        app.warning_dialog(text,'Warning');
                    end
                end
                % Save file window generation
                [Name,path] = uiputfile({'*.fig';'*.png';'*.jpg'});
                % Check for the actual selection of the name and the
                % folder is compleated (if the saving is cancelled this
                % section is by-passed)
                if ~isequal(Name,0)
                    Filename = string([path,Name]);
                    cd(path(1,:))
                    % Data saving
                    FigSave = copyUIAxes(Plot, 'listIgnoredProps', true);
                    saveas(FigSave.figure,Filename);
                    close(FigSave.figure);
                end
                figure(app.UIFigure);
            end
        end
        
        function check = warning_dialog_open(app)
            %{
            The function recognize if any dialogue is open. In case
            there is one, the dialogue is refreshed and the OUTPUT 
            (check) is updated to "by-pass". Otherwise, the OUTPUT is
            set to "ok".
            %}
            check = "ok";
            if isvalid(app.warning)
                if isequal(app.warning.Visible,"on")
                    app.warning.Visible = "off";
                    app.warning.Visible = "on";
                    check = "by-pass";
                end
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %{
            The comparison sections are initialized 'off' to by pass
            the 'comparison sections' (Setup 1, Setup 2, Setup 3)
            before they are initialized by putting plots.
            The figures app.warning and app.quit are hidden (they are
            initialized because they are properties)
            Additionally a check on the presence of the examples and the
            manual is made. In case one of them is missing, the working
            directory is changed to the place in which the toolbox is saved
            and the three files are saved there.
            %}
            OnOff = "off";
            app.Setup1_data = table(OnOff);
            app.Setup2_data = table(OnOff);
            app.Setup3_data = table(OnOff);
            app.warning.Visible = "off";
            app.quit.Visible = "off";
            app.Image.ImageSource = 'VKI LOGO.jpg';
            app.LogoApp.ImageSource = 'BOS Setup Generator LOGO.png';
            % Projection plot control switch
            app.LegendSwitchLabel.BackgroundColor = [0.39,0.83,0.07];
            app.TextSwitchLabel.BackgroundColor = [0.39,0.83,0.07];
            % Examples and extra documentation saving
            if isdeployed % Stand-alone mode.
                [~, result] = system('path');
                currentDir = char(regexpi(result, 'Path=(.*?);', 'tokens', 'once'));
            else % MATLAB mode.
                currentDir = pwd;
            end
            example1_old = "C:\Users\lored\OneDrive\Desktop\RM Project\BOS shared files\BOS setup generator\Examples\HIGHresolutionCamera_Axisymmetric_HighSensitivity_application.mat";
            example2_old = "C:\Users\lored\OneDrive\Desktop\RM Project\BOS shared files\BOS setup generator\Examples\LOWresolutionCamera_Axisymmetric_HighSensitivity_application.mat";
            manual_old = "C:\Users\lored\OneDrive\Desktop\RM Project\BOS shared files\BOS setup generator\Examples\";
            example1 = fullfile(currentDir, "HIGHresolutionCamera_Axisymmetric_HighSensitivity_application.mat");
            example2 = fullfile(currentDir, "LOWresolutionCamera_Axisymmetric_HighSensitivity_application.mat");
            manual = fullfile(currentDir, "");
            if exist(example1,'file') == 2 && exist(example2,'file') == 2
                mkdir(currentDir);
                cd(currentDir);
                copyfile (example1_old, example1);
                copyfile (example2_old, example2);
                copyfile (manual_old, manual);
                disp ('')
                disp ('')
                disp ('BOS Setup Generator (',num2str(app.BOS_Setup_Generator.Version), ...
                    ') has been successfully open and loaded. The working directory', ...
                    ' has been updated and the app manual and two sessions examples', ...
                    ' are now available there')
                disp ('')
                disp ('Do not cancel the two examples from this folder or this process', ...
                    ' will be repeated the next time the app is open')
                disp ('')
                disp ('')
            end
        end

        % Button pushed function: ComputeButton
        function ComputeButtonPushed(app, event)
            %{
            The function is activated once the ComputeButton is pushed
            performing:
            - A check on the presence of an open dialogue. If it is
                present, the dialogue is refreshed and the callback is
                by-passed.
            - A check on the range inserted for the f-number. In case
                the f-number selected is outside the range, all the
                computations are by-passed and a warning message is
                generated;
            - The switch is turned automatically to 'Off' position
                (CompareSwitch.Value);
            - The function CompareSwitchValueChanged is called
                activating the "procedure" for the off position of the
                switch;
            - The 'BOS setup characteristics' section is red (INPUT
                data for the setup performance evaluation);
            - The 'BOS setup characteristics' section data are checked
                verifying the absence of null quantities. If that is
                the case, the computations and plots generations are
                enabled, otherwise a warning dialogue is open and the
                rest of the callback is bypassed;
            - The 'Resolution' and 'Setup characteristics' sections
                editable fields and plots quantities are computed and
                then displayed;
            - The 'Save setup' button is enabled;
            - The 'Save setup' menu button is enabled;
            - The 'SavingData' property value is update with the
                computed quantities of the present setup.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else 
                % BOS setup characteristics list (INPUT)
                d_rho_d_x = app.DensitygradientestimationEditField.Value; % [kg/m^4]
                delta_Z_grad = app.GradientregionthicknessestimationEditField.Value*10^(-3); % [m]
                res_x = app.ResolutionEditField_5.Value; % [px]
                res_y = app.ResolutionEditField_6.Value; % [px]
                l_px = app.PixelsizeEditField.Value*10^(-6); % [m]
                f = app.fEditField.Value*10^(-3); % [m]
                f_num_min = app.f_rangeEditField.Value; % []
                f_num_max = app.f_rangeEditField_2.Value; % []
                f_num_selected = app.fsubselectedsubEditField.Value; % []
                Z_grad = app.ZsubgradientsubEditField.Value*10^(-3); % [m]
                FOV_x = app.ResolutionEditField_7.Value*10^(-3); % [m]
                FOV_y = app.ResolutionEditField_8.Value*10^(-3); % [m]
                IW = app.IWEditField.Value;
                % BOS setup characteristics editable fields values check
                pass_value = app.compute_bypass_fnc(d_rho_d_x, delta_Z_grad, ...
                    res_x, res_y, l_px, f, f_num_min, f_num_max, ...
                    f_num_selected, Z_grad, FOV_x, FOV_y, IW);
                pass_plot = app.f_numb_plot_verify_fnc();
                if isequal(pass_value,"off") % Incomplete input data
                    % Warning dialogue generation
                    text = ['Some input data are missing. ', ...
                        'Verify the values introduced in the section', ...
                        '\bf BOS setup characteristics', ...
                        '\rm. Please close the message or select OK ', ...
                        'to suspend the operation.'];
                    app.warning_dialog(text,'Warning');
                elseif isequal(pass_plot,"off") % Incorrect input data
                    % Warning dialogue generation
                    text = ['The f_{#-selected} value selected is not ',...
                        'within the range of values of f_# provided. ', ...
                        'Verify the values introduced in the section', ...
                        '\bf Objective', ...
                        '\rm. Please close the message or select OK ', ...
                        'to suspend the operation.'];
                    app.warning_dialog(text,'Warning');
                else % Compleate and correct input data
                    % Comparison section is automatically turned off
                    app.CompareSwitch.Value = 'Off';
                    % The Resolution section is automatically restored (the 
                    app.CompareSwitchValueChanged(event);
                    % FOV computation
                    [FOV_back_x, FOV_back_y] = app.FOV_computation(l_px, res_x, ...
                        res_y, FOV_x, FOV_y);
                    % Sensitivity computations
                    M = l_px*res_x/FOV_back_x; % [] System magnification
                    bk_dpi = (2.54*10^(-2))*M/l_px; % [dpi] Pixel projection size on the background
                    Z_lens = (M+1)*f/M; % [m] Camera position
                    G = 2.26*10^(-4); % Gladstone-dale constant
                    delta_X = d_rho_d_x*G*Z_grad*delta_Z_grad*M/l_px; % [px] Predicted displacement
                    FOV_grad_x = FOV_back_x*(Z_lens-Z_grad)/Z_lens; % [m]
                    FOV_grad_y = FOV_back_y*(Z_lens-Z_grad)/Z_lens; % [m]
                    % Resolution computations
                    f_num = linspace(f_num_min,f_num_max,100); % f-number base for plot
                    [r_t,~] = app.r_t_comp(l_px,M,Z_grad,Z_lens,f_num); % r_t: [m] Optic resolution (computed on f_num)
                    [r_t_selected,diff_lim_selected] = app.r_t_comp(l_px,M,Z_grad,Z_lens,f_num_selected); % [m] Optic resolution (selceted position)
                    delta_diffraction_px = diff_lim_selected/l_px; % [px] Difraction limit circle diameter (normalized by pixel projection size)
                    r_IP = 0.5*IW*l_px/M; % Image processing resolution[m]
                    % Resolution plot organization
                    [f_num_plot, positions] = sort([f_num,f_num_selected]);
                    r_t_plot = [r_t, r_t_selected];
                    r_t_plot = r_t_plot(positions);
                    % Resolution plot clearing
                    cla (app.OpticResolutionUIAxes);
                    legend (app.OpticResolutionUIAxes,'off');
                    % Reslolution plot generation
                    plot (app.OpticResolutionUIAxes, f_num_plot, r_t_plot*1000, ...
                        '-b', f_num_selected, r_t_selected*1000,'*r');
                    legend (app.OpticResolutionUIAxes,'','f_{# - selected}');
                    app.Plot(1) = true;
                    % Projection plot clearing and generation
                    cla (app.ParaxialApproximationErrorUIAxes);
                    app.projection_plot (FOV_back_x*1000, ...
                        FOV_back_y*1000, Z_grad*1000, Z_lens*1000);
                    app.Plot(2) = true;
                    % Paraxial error plot clearing and generation
                    limit = app.epsilonthresholdEditField.Value;
                    cla (app.ParaxialApproximationErrorUIAxes);
                    parax_err = app.paraxial_error_plot (FOV_back_x*1000, ...
                        FOV_back_y*1000, f*1000, f_num_selected, Z_lens*1000, ...
                        limit);
                    app.Plot(3) = true;
                    % Fields filling (OUTPUT)
                    % Resolution section
                    app.rsubtsubEditField_2.Value = r_t_selected*1000;
                    app.rsubIPsubEditField_2.Value = r_IP*1000;
                    app.DeltaXEditField.Value = delta_X;
                    app.MEditField.Value = M;
                    app.pixelprojEditField.Value = bk_dpi;
                    app.FOVsubeffsubEditField.Value = FOV_back_x*1000;
                    % Setup characteristics section
                    app.ZsubgradsubEditField_50.Value = Z_grad*1000;
                    app.ZsublenssubEditField_50.Value = Z_lens*1000;
                    app.MEditField_50.Value = M;
                    app.pixelprojEditField_50.Value = bk_dpi;
                    app.epsilonsubparaxialapproxmaxsubEditField_50.Value = parax_err;
                    app.rsubtsubEditField_61.Value = r_t_selected*1000;
                    app.rsubIPsubEditField_60.Value = r_IP*1000;
                    app.DeltaXEditField_40.Value = delta_X;
                    app.IWEditField_41.Value = IW;
                    app.FOVsubbackgroundsubEditField_70.Value = FOV_back_x*1000;
                    app.FOVsubbackgroundsubEditField_70_2.Value = FOV_back_y*1000;
                    app.FOVsubeffsubEditField_71.Value = FOV_grad_x*1000;
                    app.FOVsubeffsubEditField_71_2.Value = FOV_grad_y*1000;
                    % 'Save setup' button enabling
                    app.SavesetupButton.Enable = "on";
                    % 'Save setup' menu button enabling
                    app.SavesetupMenu.Enable = "on";
                    % 'Export' menu button enabling
                    app.ExportMenu.Enable = "on";
                    app.AllvariablesinMATLABworkspaceMenu.Enable = "on";
                    app.SetupdataandperformanceMenu.Enable = "on";
                    app.BackgroundgenerationdataMenu.Enable = "on";
                    % Properties variable update
                    delta_Z_grad = delta_Z_grad*1000; % [mm]
                    l_px = l_px*1000000; % [micron]
                    f = f*1000; % [mm]
                    Z_grad = Z_grad*1000; % [mm]
                    FOV_x = FOV_x*1000; % [mm]
                    FOV_y = FOV_y*1000; % [mm]
                    OnlySavingData = table(d_rho_d_x, delta_Z_grad, ...
                       res_x, res_y, l_px, f, f_num_min, f_num_max, ...
                       f_num_selected, Z_grad, FOV_x, FOV_y, IW);
                    r_t_plot = r_t_plot*1000; % [mm]
                    r_t_selected = r_t_selected*1000; % [mm]
                    r_IP = r_IP*1000; % [mm]
                    FOV_back_x = FOV_back_x*1000; % [mm]
                    ComparisonData = table(f_num_plot, r_t_plot, ...
                        f_num_selected, r_t_selected, r_IP, FOV_back_x, ...
                        delta_X);
                    Z_lens = Z_lens*1000; % [mm]
                    FOV_back_y = FOV_back_y*1000; % [mm]
                    FOV_grad_x = FOV_grad_x*1000; % [mm]
                    FOV_grad_y = FOV_grad_y*1000; % [mm]
                    ExtraData = table(M, Z_lens, delta_diffraction_px, ...
                        bk_dpi, FOV_back_x, FOV_back_y, FOV_grad_x, FOV_grad_y);
                    app.SavingData = table(OnlySavingData,ComparisonData,ExtraData);
                end
            end
        end

        % Value changed function: CompareSwitch
        function CompareSwitchValueChanged(app, event)
            %{
            The function is activated once the CompareSwitch position
            is switched. Initially a check on the presence of an open
            dialogue is performed. If any dialogue is present, the
            dialogue is refreshed, the previous switch position is
            restored and the callback is by-passed.
            The switch position change does not generate any plots, it
            only activates (On) / deactivates (Off) the buttons
            associated to the comparison ('Load configuration' and
            'Clear').
            In case the switch position is switched to 'On' it also:
            - clears all the plots;
            - clears all the editable fields of the 'Resolution' and
                'Setup characteristics' windows;
            - updates the switch + setups sections;
            - disables the menu section 'Compare';
            - disables the button 'Save setup';
            - enables the menu button 'Save setup';
            - disables the paraxial error plot threshold editing,
                disabling also the green background.
            In case the switch position is switched to 'off' it also:
            - clears the resolution plot;
            - clears all the comparison sections editable fields;
            - updates the switch + plot + setups sections;
            - enables the menu section 'Compare';
            - disables the 'clear' buttons in the setups sections;
            - enables the paraxial error plot threshold editing,
                enabling also the green background.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
                % Previous position restoring
                if isequal(app.CompareSwitch.Value,"On")
                    app.CompareSwitch.Value = "Off";
                else
                    app.CompareSwitch.Value = "On";
                end
                % Dialogue refresh
                app.warning.Visible = "off";
                app.warning.Visible = "on";
            else
                % 'Plot' property update
                app.Plot(1) = false;
                app.Plot(2) = false;
                app.Plot(3) = false;
                % Switch position reading
                value = app.CompareSwitch.Value;
                % Switch position "reacting"
                if isequal(value,"On")
                    % The comparison section is disabled
                    app.LoadconfigurationButton.Enable = "on";
                    app.ConfEditField.Enable = "on";
                    app.LoadconfigurationButton_2.Enable = "on";
                    app.ConfEditField_2.Enable = "on";
                    app.LoadconfigurationButton_3.Enable = "on";
                    app.ConfEditField_3.Enable = "on";
                    % Plots clearing
                    legend(app.OpticResolutionUIAxes,"off");
                    cla(app.OpticResolutionUIAxes);
                    legend(app.ParaxialApproximationErrorUIAxes,"off");
                    cla(app.ParaxialApproximationErrorUIAxes);
                    legend(app.FOVProjectionUIAxes,"off");
                    cla(app.FOVProjectionUIAxes);
                    % 'Resolution' and 'Setup characteristics' clearing
                    app.output_clearing();
                    % Font updates
                    % Switch
                    app.switch_comparisonON_update();
                    % Menu section 'Compare' disabling
                    app.CompareMenu.Enable = "off";
                    % 'Save setup' button disabling
                    app.SavesetupButton.Enable = "off";
                    % 'Save setup' menu button disabling
                    app.SavesetupMenu.Enable = "off";
                    % 'Export' menu button disabling
                    app.AllvariablesinMATLABworkspaceMenu.Enable = "off";
                    app.SetupdataandperformanceMenu.Enable = "off";
                    app.BackgroundgenerationdataMenu.Enable = "off";
                    % Paraxial error plot threshold editing disabling
                    app.epsilonthresholdEditField.Editable = "off";
                    app.EditFieldPortrait_14.Visible = "off";
                elseif isequal(value,"Off")
                    % The comparison section is disabled
                    app.LoadconfigurationButton.Enable = "off";
                    app.ConfEditField.Enable = "off";
                    app.LoadconfigurationButton_2.Enable = "off";
                    app.ConfEditField_2.Enable = "off";
                    app.LoadconfigurationButton_3.Enable = "off";
                    app.ConfEditField_3.Enable = "off";
                    % Plots clearing
                    legend(app.OpticResolutionUIAxes,"off");
                    cla(app.OpticResolutionUIAxes);
                    % Setup comparison section fields clearing
                    app.setup1_clear();
                    app.setup2_clear();
                    app.setup3_clear();
                    % Font updates
                    % Switch
                    app.switch_comparisonOFF_update();
                    % Plot
                    app.plot_comparisonOFF_update();
                    % Setup1
                    app.setup1_comparisonOFF_update();
                    % Setup2
                    app.setup2_comparisonOFF_update();
                    % Setup3
                    app.setup3_comparisonOFF_update();
                    % Menu section 'Compare' enabling
                    app.CompareMenu.Enable = "on";
                    % 'Clear' button disabling
                    app.ClearButton.Enable = "off";
                    % Paraxial error plot threshold editing enabling
                    app.epsilonthresholdEditField.Editable = "on";
                    app.EditFieldPortrait_14.Visible = "on";
                end
            end
        end

        % Button pushed function: LoadconfigurationButton
        function LoadconfigurationButtonPushed(app, event)
            %{
            The function is activated once the LoadconfigurationButton
            is pressed ('Setup 1' section). Initially a check on the
            presence of an open dialogue is performed. If it is
            present, the dialogue is refreshed and the callback is
            by-passed.
            The function activates the generation of a window for the
            setup data loading. Once the data file ('.mat' format) is
            selected the 'Setup 1' section is filled and its layout is
            updated. In addition, the comparison plot is re-generated
            and the 'clear' button for this section is enabled.
            Two if conditions are inserted to verify:
                - that a file is selected from the window;
                - that the file is compatible to the app unpacking
                    method.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Load file selection window generation
                [Name,path] = uigetfile({'*.mat'});
                % Check for the actual selection of a file (if the loading
                % is cancelled this section is by-passed)
                if ~isequal(Name,0)
                    % Data unpacking
                    Filename = string([path,Name]);
                    Name = string(Name);
                    cd(path(1,:))
                    check = load(Filename,'Saved');
                    % File selected validity check
                    if isempty(fieldnames(check)) % Wrong file is picked
                        % Text shown in the info dialogue
                        text = ['The selected data are not compatible with the ', ...
                            'application, please verify the name of the ', ...
                            'selected file. Only data saved through the ', ...
                            'official app can be loaded. Please close ', ...
                            'the message or select OK to suspend the operation.'];
                        % Generation of the warning dialogue
                        app.warning_dialog(text,'Warning');
                    elseif ~isempty(fieldnames(check)) % Correct file is picked
                        % Setup 1 layout update
                        app.setup1_comparisonON_update();
                        load (Filename,'Saved');
                        ComparisonData = Saved.ComparisonData;
                        OnOff = "on";
                        app.Setup1_data = table(OnOff,Name,Filename,ComparisonData);
                        % Editable field filling
                        app.ConfEditField.Value = Name;
                        app.rsubtsubEditField.Value = Saved.ComparisonData.r_t_selected;
                        app.rsubIPsubEditField.Value = Saved.ComparisonData.r_IP;
                        app.fsubsubEditField.Value = Saved.ComparisonData.f_num_selected;
                        app.FOVsubeffsubEditField_2.Value = Saved.ComparisonData.FOV_back_x;
                        app.DeltaXEditField_2.Value = Saved.ComparisonData.delta_X;
                        % Plot re-generation
                        app.comparison_plot_fnc_MOTHER();
                        % 'Clear' button enabling
                        app.ClearButton.Enable = "on";
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Button pushed function: LoadconfigurationButton_2
        function LoadconfigurationButton_2Pushed(app, event)
            %{
            The function is activated once the
            LoadconfigurationButton_2 is pressed ('Setup 2' section).
            Initially a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed.
            The function activates the generation of a window for the
            setup data loading. Once the data file ('.mat' format) is
            selected the 'Setup 2' section is filled and its layout is
            updated. In addition, the comparison plot is re-generated
            and the 'clear' button for this section is enabled.
            Two if conditions are inserted to verify:
                - that a file is selected from the window;
                - that the file is compatible to the app unpacking
                    method.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Load file selection window generation
                [Name,path] = uigetfile({'*.mat'});
                % Check for the actual selection of a file (if the loading
                % is cancelled this section is by-passed)
                if ~isequal(Name,0)
                    % Data unpacking
                    Filename = string([path,Name]);
                    Name = string(Name);
                    cd(path(1,:))
                    check = load(Filename,'Saved');
                    % File selected validity check
                    if isempty(fieldnames(check)) % Wrong file is picked
                        % Text shown in the info dialogue
                        text = ['The selected data are not compatible with the ', ...
                            'application, please verify the name of the ', ...
                            'selected file. Only data saved through the ', ...
                            'official app can be loaded. Please close ', ...
                            'the message or select OK to suspend the operation.'];
                        % Generation of the warning dialogue
                        app.warning_dialog(text,'Warning');
                    elseif ~isempty(fieldnames(check)) % Correct file is picked
                        % Setup 2 layout update
                        app.setup2_comparisonON_update();
                        load (Filename,'Saved')
                        ComparisonData = Saved.ComparisonData;
                        OnOff = "on";
                        app.Setup2_data = table(OnOff,Name,Filename,ComparisonData);
                        % Editable field filling
                        app.ConfEditField_2.Value = Name;
                        app.rsubtsubEditField_3.Value = Saved.ComparisonData.r_t_selected;
                        app.rsubIPsubEditField_3.Value = Saved.ComparisonData.r_IP;
                        app.fsubsubEditField_2.Value = Saved.ComparisonData.f_num_selected;
                        app.FOVsubeffsubEditField_3.Value = Saved.ComparisonData.FOV_back_x;
                        app.DeltaXEditField_3.Value = Saved.ComparisonData.delta_X;
                        % Plot re-generation
                        app.comparison_plot_fnc_MOTHER();
                        % 'Clear' button enabling
                        app.ClearButton_2.Enable = "on";
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Button pushed function: LoadconfigurationButton_3
        function LoadconfigurationButton_3Pushed(app, event)
            %{
            The function is activated once the
            LoadconfigurationButton_3 is pressed ('Setup 3' section).
            Initially a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed.
            The function activates the generation of a window for the
            setup data loading. Once the data file ('.mat' format) is
            selected the 'Setup 3' section is filled and its layout is
            updated. In addition, the comparison plot is re-generated
            and the 'clear' button for this section is enabled.
            Two if conditions are inserted to verify:
                - that a file is selected from the window;
                - that the file is compatible to the app unpacking
                    method.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Load file selection window generation
                [Name,path] = uigetfile({'*.mat'});
                % Check for the actual selection of a file (if the loading
                % is cancelled this section is by-passed)
                if ~isequal(Name,0)
                    % Data unpacking
                    Filename = string([path,Name]);
                    Name = string(Name);
                    cd(path(1,:))
                    check = load(Filename,'Saved');
                    % File selected validity check
                    if isempty(fieldnames(check)) % Wrong file is picked
                        % Text shown in the info dialogue
                        text = ['The selected data are not compatible with the ', ...
                            'application, please verify the name of the ', ...
                            'selected file. Only data saved through the ', ...
                            'official app can be loaded. Please close ', ...
                            'the message or select OK to suspend the operation.'];
                        % Generation of the warning dialogue
                        app.warning_dialog(text,'Warning');
                    elseif ~isempty(fieldnames(check)) % Correct file is picked
                        % Setup 3 layout update
                        app.setup3_comparisonON_update();
                        load (Filename,'Saved')
                        ComparisonData = Saved.ComparisonData;
                        OnOff = "on";
                        app.Setup3_data = table(OnOff,Name,Filename,ComparisonData);
                        % Editable field filling
                        app.ConfEditField_3.Value = Name;
                        app.rsubtsubEditField_4.Value = Saved.ComparisonData.r_t_selected;
                        app.rsubIPsubEditField_4.Value = Saved.ComparisonData.r_IP;
                        app.fsubsubEditField_3.Value = Saved.ComparisonData.f_num_selected;
                        app.FOVsubeffsubEditField_4.Value = Saved.ComparisonData.FOV_back_x;
                        app.DeltaXEditField_4.Value = Saved.ComparisonData.delta_X;
                        % Plot re-generation
                        app.comparison_plot_fnc_MOTHER();
                        % 'Clear' button enabling
                        app.ClearButton_3.Enable = "on";
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            %{
            The 'Setup 1' section is cleared and disabled for the
            plots and the initial layout of the 'Setup 1' section is
            restored. Initially a check on the presence of an open
            dialogue is performed. If any dialogue is present, the
            dialogue is refreshed and the callback is by-passed. The
            comparison plot is also re-generated.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Section clearing
                app.setup1_clear();
                % Layout change
                app.setup1_comparisonOFF_update();
                % Comparison plot update
                app.comparison_plot_fnc_MOTHER();
            end
        end

        % Button pushed function: ClearButton_2
        function ClearButton_2Pushed(app, event)
            %{
            The 'Setup 2' section is cleared and disabled for the
            plots and the initial layout of the 'Setup 2' section is
            restored. Initially a check on the presence of an open
            dialogue is performed. If any dialogue is present, the
            dialogue is refreshed and the callback is by-passed. The
            comparison plot is also re-generated.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Section clearing
                app.setup2_clear();
                % Layout change
                app.setup2_comparisonOFF_update();
                % Comparison plot update
                app.comparison_plot_fnc_MOTHER();
            end
        end

        % Button pushed function: ClearButton_3
        function ClearButton_3Pushed(app, event)
            %{
            The 'Setup 3' section is cleared and disabled for the
            plots and the initial layout of the 'Setup 3' section is
            restored. Initially a check on the presence of an open
            dialogue is performed. If any dialogue is present, the
            dialogue is refreshed and the callback is by-passed. The
            comparison plot is also re-generated.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Section clearing
                app.setup3_clear();
                % Layout change
                app.setup3_comparisonOFF_update();
                % Comparison plot update
                app.comparison_plot_fnc_MOTHER();
            end
        end

        % Menu selected function: CompareMenu
        function CompareMenuSelected(app, event)
            %{
            By pressing the button CompareMenu the 'comparison mode'
            is activated. The button can be pressed only when the
            comparison switch is 'off', therefore this event can only
            turn on the 'comparison mode'.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                app.CompareSwitch.Value = "On";
                app.CompareSwitchValueChanged(event)
            end
        end

        % Callback function: SavesetupButton, SavesetupMenu
        function SavesetupButtonPushed(app, event)
            %{
            The function is activated after either one between the
            SavesetupButton or SavesetupMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that, an if
            condition checks if the current data in the 'BOS setup
            characteristics' section correspond to the data that are
            going to be saved. In case this is not true, an info
            dialogue is generated to comunicate the situation to the
            user. Then, after the dialogue is closed (see
            app.warning_dialog), the save file window is open and
            location and name of the saved file can be decided. In
            case the check shows the total agreement between the saved
            and displayed data, the warning dialogue step is by-passed.
            The file format is fixed and it is '.mat'.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Displayed and going to be saved data agreement check
                check = app.INPUT_plot_verify_fcn();
                if isequal(check,"off") % No total agreement
                    % Text shown in the info dialogue
                    text =  ['Only the data related to the last computed ', ...
                        'setup are saved. Please note that the data which are ', ...
                        'going to be saved differ from the current data in ', ...
                        'the section', '\bf BOS setup characteristics', ...
                        '\rm. Please close the message or select OK to proceed.'];
                    % Generation of the info dialogue
                    app.warning_dialog(text,'Warning');
                end
                % Save file window generation
                [Name,path] = uiputfile({'*.mat'});
                % Check for the actual selection of the name and the
                % folder is compleated (if the saving is cancelled this
                % section is by-passed)
                if ~isequal(Name,0)
                    Filename = string([path,Name]);
                    cd(path(1,:))
                    % Data saving
                    Saved = app.SavingData;
                    save(Filename,'Saved');
                end
                figure(app.UIFigure)
            end
        end

        % Callback function: LoadsetupButton, LoadsetupMenu
        function LoadsetupButtonPushed(app, event)
            %{
            The function is activated once either one between the
            LoadsetupButton or the LoadsetupMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed.
            The function activates the generation of a window for the
            setup data loading. Once the data file ('.mat' format) is
            selected the 'BOS setup characteristics' section is filled.
            Two if conditions are inserted to verify:
                - that a file is selected from the window;
                - that the file is compatible to the app unpacking
                    method.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Load file selection window generation
                [Name,path] = uigetfile({'*.mat'});
                % Check for the actual selection of a file (if the loading
                % is cancelled this section is by-passed)
                if ~isequal(Name,0)
                    Filename = string([path,Name]);
                    cd(path(1,:))
                    % Data loading
                    check = load(Filename,'Saved');
                    % File selected validity check
                    if isempty(fieldnames(check)) % Wrong file is picked
                        % Text shown in the info dialogue
                        text = ['The selected data are not compatible with the ', ...
                            'application, please verify the name of the ', ...
                            'selected file. Only data saved through the ', ...
                            'official app can be loaded. Please close the ', ...
                            'message or select OK to suspend the operation.'];
                        % Generation of the warning dialogue
                        app.warning_dialog(text,'Warning');
                    elseif ~isempty(fieldnames(check)) % Correct file is picked
                        load (Filename,'Saved')
                        % Editable field filling
                        app.DensitygradientestimationEditField.Value = Saved.OnlySavingData.d_rho_d_x;
                        app.GradientregionthicknessestimationEditField.Value = Saved.OnlySavingData.delta_Z_grad;
                        app.ResolutionEditField_5.Value = Saved.OnlySavingData.res_x;
                        app.ResolutionEditField_6.Value = Saved.OnlySavingData.res_y;
                        app.PixelsizeEditField.Value = Saved.OnlySavingData.l_px;
                        app.fEditField.Value = Saved.OnlySavingData.f;
                        app.f_rangeEditField.Value = Saved.OnlySavingData.f_num_min;
                        app.f_rangeEditField_2.Value = Saved.OnlySavingData.f_num_max;
                        app.fsubselectedsubEditField.Value = Saved.OnlySavingData.f_num_selected;
                        app.ZsubgradientsubEditField.Value = Saved.OnlySavingData.Z_grad;
                        app.ResolutionEditField_7.Value = Saved.OnlySavingData.FOV_x;
                        app.ResolutionEditField_8.Value = Saved.OnlySavingData.FOV_y;
                        app.IWEditField.Value = Saved.OnlySavingData.IW;
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Menu selected function: AllvariablesinMATLABworkspaceMenu
        function AllvariablesinMATLABworkspaceMenuSelected(app, event)
            %{
            The function is activated once the
            AllvariablesinMATLABworkspaceMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that, an if
             conditionchecks if the current data in the 'BOS setup
            characteristics' section correspond to the data that are
            going to be exported in the workspace. In case this is not
            true, an info dialogue is generated to comunicate the
            situation to the user. Then, after the dialogue is closed
            (see app.warning_dialog), the data are exported. In case
            the check shows the total agreement between the saved and
            displayed data, the warning dialogue step is by-passed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Displayed and going to be saved data agreement check
                check = app.INPUT_plot_verify_fcn();
                if isequal(check,"off") % No total agreement
                    % Text shown in the info dialogue
                    text =  ['Only the data related to the last computed ', ...
                        'setup are exported. Please note that the data ', ...
                        'which are going to be exported differ from the ', ...
                        'current data in the section', ...
                        '\bf BOS setup characteristics', ...
                        '\rm. Please close the message or select OK to proceed.'];
                    % Generation of the info dialogue
                    app.warning_dialog(text,'Warning');
                end
                % Exporting data preparation
                [d_rho_d_x, delta_Z_grad, camera_resolution_x, camera_resolution_y, ...
                  camera_resolution, l_px, f, f_number_selected, r_t_selected, ...
                  IW, r_IP, M, Z_lens, delta_diffraction, pixel_projection_size, ...
                  Z_grad,  delta_X, FOV_background_x, FOV_background_y, ...
                  FOV_gradient_x, FOV_gradient_y, FOV, f_number_plot, r_t_plot, ...
                  BOS_setup, BOS_background_generator] = app.data_unfold();
                % Exporting procedure
                assignin('base',"d_rho_d_x",d_rho_d_x);
                assignin('base',"delta_Z_grad",delta_Z_grad);
                assignin('base',"camera_resolution_x",camera_resolution_x);
                assignin('base',"camera_resolution_y",camera_resolution_y);
                assignin('base',"camera_resolution",camera_resolution);
                assignin('base',"l_px",l_px);
                assignin('base',"f",f);
                assignin('base',"f_number_selected",f_number_selected);
                assignin('base',"r_t_selected",r_t_selected);
                assignin('base',"IW",IW);
                assignin('base',"r_IP",r_IP);
                assignin('base',"M",M);
                assignin('base',"Z_lens",Z_lens);
                assignin('base',"delta_diffraction",delta_diffraction);
                assignin('base',"pixel_projection_size",pixel_projection_size);
                assignin('base',"Z_grad",Z_grad);
                assignin('base',"delta_X",delta_X);
                assignin('base',"FOV_background_x",FOV_background_x);
                assignin('base',"FOV_background_y",FOV_background_y);
                assignin('base',"FOV_gradient_x",FOV_gradient_x);
                assignin('base',"FOV_gradient_y",FOV_gradient_y);
                assignin('base',"FOV",FOV);
                assignin('base',"f_number_plot",f_number_plot);
                assignin('base',"r_t_plot",r_t_plot);
                assignin('base',"BOS_setup",BOS_setup);
                assignin('base',"BOS_background_generator",BOS_background_generator);
            end
        end

        % Menu selected function: SetupdataandperformanceMenu
        function SetupdataandperformanceMenuSelected(app, event)
            %{
            The function is activated once the
            SetupdataandperformanceMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that, an if
            condition checks if the current data in the 'BOS setup
            characteristics' section correspond to the data that are
            going to be saved (expoted as a table). In case this is
            not true, an info dialogue is generated to comunicate the
            situation to the user. Then, after the dialogue is closed
            (see app.warning_dialog), the save file window is open and
            location and name of the saved file can be decided. In
            case the check shows the total agreement between the saved
            and displayed data, the warning dialogue step is by-passed.
            The file format could be: '.mat', '.txt' or '.xlsx'.
            The exported data includes all the important information
            concerning the BOS setup (structure and performance).
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Displayed and going to be saved data agreement check
                check = app.INPUT_plot_verify_fcn();
                if isequal(check,"off") % No total agreement
                    % Text shown in the info dialogue
                    text =  ['Only the data related to the last computed ', ...
                        'setup are exported. Please note that the data ', ...
                        'which are going to be exported differ from the ', ...
                        'current data in the section', ...
                        '\bf BOS setup characteristics', ...
                        '\rm. Please close the message or select OK to proceed.'];
                    % Generation of the info dialogue
                    app.warning_dialog(text,'Warning');
                end
                % Exporting data preparation
                [~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ...
                    ~, ~, ~, ~, ~, ~, BOS_setup, ~] = app.data_unfold();
                % Exporting (saving) procedure
                % Save file window generation
                [Name,path,index] = uiputfile({'*.mat';'*.txt';'*.xlsx'});
                % Check for the actual selection of the name and the
                % folder is compleated (if the saving is cancelled this
                % section is by-passed)
                if ~isequal(Name,0)
                    Filename = string([path,Name]);
                    cd(path(1,:))
                    % File type check
                    if ~isequal(index,1) % index=1 -> '.mat'
                        % Text shown in the info dialogue
                        text = ['The file is saved throught the function "'...
                            '\bf writetable','\rm ". The use of the "', ...
                            '\bf readtable', '\rm " function is recommended ', ...
                            'to open and read the file in MATLAB. Please close ', ...
                            'the message or select OK to conclude the operation.'];
                        % Generation of the info dialogue
                        app.warning_dialog(text,'Info');
                        % Data saving
                        writetable(BOS_setup,Filename);
                    else
                        % Data saving
                        save(Filename, 'BOS_setup');
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Menu selected function: BackgroundgenerationdataMenu
        function BackgroundgenerationdataMenuSelected(app, event)
            %{
            The function is activated once the
            BackgroundgenerationdataMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that, an if
            condition checks if the current data in the 'BOS setup
            characteristics' section correspond to the data that are
            going to be saved (expoted as a table). In case this is
            not true, an info dialogue is generated to comunicate the
            situation to the user. Then, after the dialogue is closed
            (see app.warning_dialog), the save file window is open and
            location and name of the saved file can be decided. In
            case the check shows the total agreement between the saved
            and displayed data, the warning dialogue step is by-passed.
            The file format could be: '.mat', '.txt' or '.xlsx'.
            The exported data includes all the important information
            for the generation of the proper BOS background.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Displayed and going to be saved data agreement check
                check = app.INPUT_plot_verify_fcn();
                if isequal(check,"off") % No total agreement
                    % Text shown in the info dialogue
                    text = ['Only the data related to the last computed ', ...
                        'setup are exported. Please note that the data ', ...
                        'which are going to be exported differ from the ', ...
                        'current data in the section', ...
                        '\bf BOS setup characteristics', ...
                        '\rm. Please close the message or select OK to proceed.'];
                    % Generation of the info dialogue
                    app.warning_dialog(text,'Warning');
                end
                % Exporting data preparation
                [~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ~, ...
                    ~, ~, ~, ~, ~, BOS_background_generator] = app.data_unfold();
                % Exporting (saving) procedure
                % Save file window generation
                [Name,path,index] = uiputfile({'*.mat';'*.txt';'.xlsx'});
                % Check for the actual selection of the name and the
                % folder is compleated (if the saving is cancelled this
                % section is by-passed)
                if ~isequal(Name,0)
                    Filename = string([path,Name]);
                    cd(path(1,:))
                    % File type check
                    if ~isequal(index,1) % index=1 -> '.mat'
                        % Text shown in the info dialogue
                        text = ['The file is saved throught the function "'...
                            '\bf writetable','\rm ". The use of the "', ...
                            '\bf readtable', '\rm " function is recommended ', ...
                            'to open and read the file in MATLAB. Please close ', ...
                            'the message or select OK to conclude the operation'];
                        % Generation of the info dialogue
                        app.warning_dialog(text,'Info');
                        % Data saving
                        writetable(BOS_background_generator,Filename);
                    else
                        % Data saving
                        save(Filename, 'BOS_background_generator');
                    end
                end
                figure(app.UIFigure)
            end
        end

        % Menu selected function: OpticresolutionMenu
        function OpticresolutionMenuSelected(app, event)
            %{
            The function is activated once the OpticresolutionMenu
            button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that,
            through the function 'app.plot_saving_fnc' the
            'Resolution' plot is saved.
            The file format could be: '.fig', '.jpg', '.png'.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                check = app.Plot(1);
                plot_saving_fnc(app,app.OpticResolutionUIAxes,check);
            end
        end

        % Menu selected function: ParaxialapproximationerrorMenu
        function ParaxialapproximationerrorMenuSelected(app, event)
            %{
            The function is activated once the
            ParaxialapproximationerrorMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that,
            through the function 'app.plot_saving_fnc' the
            'Resolution' plot is saved.
            The file format could be: '.fig', '.jpg', '.png'.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                check = app.Plot(2);
                plot_saving_fnc(app,app.ParaxialApproximationErrorUIAxes,check);
            end
        end

        % Menu selected function: FieldofviewprojectionMenu
        function FieldofviewprojectionMenuSelected(app, event)
            %{
            The function is activated once the
            FieldofviewprojectionMenu button is pressed.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed and the callback is by-passed. After that,
            through the function 'app.plot_saving_fnc' the
            'Resolution' plot is saved.
            The file format could be: '.fig', '.jpg', '.png'.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                check = app.Plot(3);
                plot_saving_fnc(app,app.FOVProjectionUIAxes,check);
            end
        end

        % Value changed function: LegendSwitch
        function LegendSwitchValueChanged(app, event)
            %{
            The function is activated by the change of position of the
            switch regulating the presence of the legend in the FOV
            plot.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed, the previous switch position is restored and
            the callback is by-passed.
            Then, a check on the switch value is performed to update
            the property 'app.lgd_on{1}' together with and update of
            the switch appearance. This is followed by a second check
            on the presence of the plot. In case the plot is present:
                - if the switch is on "On", the legend is displayed
                - if the switch is on "Off", the legend is hidden
            In case that no plot is present, no plot update are
            performed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
                % Previous position restoring
                if isequal(app.LegendSwitch.Value,"On")
                    app.LegendSwitch.Value = "Off";
                else
                    app.LegendSwitch.Value = "On";
                end
                % Dialogue refresh
                app.warning.Visible = "Off";
                app.warning.Visible = "On";
            else
                % Value check and appearance update
                value = app.LegendSwitch.Value;
                if isequal(value,"On")
                    % Property value update
                    app.lgd_on{1} = true;
                    % Background color update
                    app.LegendSwitchLabel.BackgroundColor = [0.39,0.83,0.07];
                elseif isequal(value,"Off")
                    % Property value update
                    app.lgd_on{1} = false;
                    % Background color update
                    app.LegendSwitchLabel.BackgroundColor = "none";
                end
                % Plot presence check
                if isequal(app.Plot(3),true) % Plot is present
                    % Plot update
                    if isequal(app.lgd_on{1},true)
                        % Legend insertion
                        prov = app.lgd_on{2};
                        prov.Visible = "on";
                    elseif ~isequal(app.lgd_on{1},true)
                        % Legend removal
                        prov = app.lgd_on{2};
                        prov.Visible = "off";
                    end
                end
            end
        end

        % Value changed function: TextSwitch
        function TextSwitchValueChanged(app, event)
            %{
            The function is activated by the change of position of the
            switch regulating the presence of the texts (FOV
            projection sizes) in the FOV plot.
            Initially, a check on the presence of an open dialogue is
            performed. If any dialogue is present, the dialogue is
            refreshed, the previous switch position is restored and
            the callback is by-passed.
            Then, a check on the switch value is performed to update
            the property 'app.txt_on{1}' together with and update of
            the switch appearance. This is followed by a second check
            on the presence of the plot. In case the plot is present:
                - if the switch is on "On", the texts are displayed
                - if the switch is on "Off", the texts are hidden
            In case that no plot is present, no plot update are
            performed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
                % Previous position restoring
                if isequal(app.TextSwitch.Value,"On")
                    app.TextSwitch.Value = "Off";
                else
                    app.TextSwitch.Value = "On";
                end
                % Dialogue refresh
                app.warning.Visible = "off";
                app.warning.Visible = "on";
            else
                % Value check and appearance update
                value = app.TextSwitch.Value;
                if isequal(value,"On")
                    % Property value update
                    app.txt_on{1} = true;
                    % Background color update
                    app.TextSwitchLabel.BackgroundColor = [0.39,0.83,0.07];
                elseif isequal(value,"Off")
                    % Property value update
                    app.txt_on{1} = false;
                    % Background color update
                    app.TextSwitchLabel.BackgroundColor = "none";
                end
                % Plot presence check
                if isequal(app.Plot(3),true) % Plot is present
                    % Plot update
                    if isequal(app.txt_on{1},true)
                        % Texts insertion
                        prov_1 = app.txt_on{2};
                        prov_1.Visible = "on";
                        prov_2 = app.txt_on{3};
                        prov_2.Visible = "on";
                        prov_3 = app.txt_on{4};
                        prov_3.Visible = "on";
                        prov_4 = app.txt_on{5};
                        prov_4.Visible = "on";
                    elseif ~isequal(app.txt_on{1},true)
                        % Texts removal
                        prov_1 = app.txt_on{2};
                        prov_1.Visible = "off";
                        prov_2 = app.txt_on{3};
                        prov_2.Visible = "off";
                        prov_3 = app.txt_on{4};
                        prov_3.Visible = "off";
                        prov_4 = app.txt_on{5};
                        prov_4.Visible = "off";
                    end
                end
            end
        end

        % Menu selected function: ExitMenu
        function ExitMenuSelected(app, event)
            %{
            By pressing the button ExitMenu a dialogue window is open
            asking if the user want to close the app.
            In case 'Yes' is selected, the app is turned off. In case
            'Cancel' is selected, the dialogue is closed and nothing
            else happens.
            Initially, a check on the presence of an open dialogue is
            also performed. If any dialogue is present, the dialogue
            is refreshed and the callback is by-passed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Dialogue creation
                app.quit = questdlg('Do you want to quit BOS setup generator?', ...
                	'Quit?', 'Yes', 'Cancel', 'Cancel');
                check = 0;
                % Response check
                switch app.quit
                    case 'Yes' % App is closed
                        close(app.warning)
                        delete(app)
                        check = 1;
                    case 'Cancel' % Nothing happens
                        check = 1;
                end
                if check == 0
                    figure(app.UIFigure)
                end
            end
        end

        % Menu selected function: Documentation
        function DocumentationMenuSelected(app, event)
            %{
            By pressing the button Button, a tab window is open providing
            informations concerning the documentation concerning the
            theoretical model adopted for the computations.
            Initially, a check on the presence of an open dialogue is
            also performed. If any dialogue is present, the dialogue
            is refreshed and the callback is by-passed.
            %}
            % Check to verify if any dialogue window is open. If that
            % is the case, the callback event is by-passed
            check = app.warning_dialog_open();
            if isequal(check,"by-pass")
            else
                % Dialogue creation
                text = {['The theoretical model adopted for the computation ', ...
                    'of the resolution is briefely described in the GitHub ', ...
                    'repository , ',...
                    'and in the MathWorks File Exchange', ...
                    '\bf https://www.mathworks.com/matlabcentral/fileexchange/105605-bos-setup-generator'], ...
                    ['\rmThe references links are now available in the Command Window']};
                % Generation of the info dialogue
                disp ('-------------------------------------------------------------------');
                disp ('-------------------------------------------------------------------');
                disp ('  ');
                disp ('GitHub repository: ');
                disp ('MathWorks File Exchange link: https://it.mathworks.com/matlabcentral/fileexchange/105605-bos-setup-generator');
                disp ('  ');
                disp ('-------------------------------------------------------------------');
                disp ('-------------------------------------------------------------------');
                %{
                text = {['The theoretical model adopted for the computation ', ...
                    'is described in:'], ['\bfDa Valle, L., Lavagnoli, S., 2022, ', ...
                    '"Design procedure and optical resolution model validation ', ...
                    'for BOS on low sensitivity supersonic flow",', ...
                    '\bf\it Journal journal journal journal'], ...
                    ['\rmA brief description of the resolution model is ', ...
                    'also provided in the GitHub repository', ...
                    '  , ',...
                    'and in the MathWorks File Exchange .'], ...
                    ['The reference is now available in the Command Window']};
                % Generation of the info dialogue
                disp ('-------------------------------------------------------------------');
                disp ('-------------------------------------------------------------------');
                disp ('  ');
                disp ('Documentation for theoretical model in :');
                disp ('Da Valle, L., Lavagnoli, S., 2022, "Design procedure and optical');
                disp ('resolution model validation for BOS (background-oriented schlieren)');
                disp ('on low sensitivity supersonic flow", Journal journal journal');
                disp ('journal journal');
                disp ('GitHub repository: ');
                disp ('MathWorks File Exchange link: ');
                disp ('  ');
                disp ('-------------------------------------------------------------------');
                disp ('-------------------------------------------------------------------');
                %}
                app.warning_dialog(text,'Documentation');
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 30 1175 774];
            app.UIFigure.Name = 'UI Figure';

            % Create Menu
            app.Menu = uimenu(app.UIFigure);
            app.Menu.Text = 'Menu';

            % Create SavesetupMenu
            app.SavesetupMenu = uimenu(app.Menu);
            app.SavesetupMenu.MenuSelectedFcn = createCallbackFcn(app, @SavesetupButtonPushed, true);
            app.SavesetupMenu.Enable = 'off';
            app.SavesetupMenu.Text = 'Save setup';

            % Create LoadsetupMenu
            app.LoadsetupMenu = uimenu(app.Menu);
            app.LoadsetupMenu.MenuSelectedFcn = createCallbackFcn(app, @LoadsetupButtonPushed, true);
            app.LoadsetupMenu.Text = 'Load setup';

            % Create CompareMenu
            app.CompareMenu = uimenu(app.Menu);
            app.CompareMenu.MenuSelectedFcn = createCallbackFcn(app, @CompareMenuSelected, true);
            app.CompareMenu.Text = 'Compare';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.Menu);
            app.ExportMenu.Text = 'Export';

            % Create AllvariablesinMATLABworkspaceMenu
            app.AllvariablesinMATLABworkspaceMenu = uimenu(app.ExportMenu);
            app.AllvariablesinMATLABworkspaceMenu.MenuSelectedFcn = createCallbackFcn(app, @AllvariablesinMATLABworkspaceMenuSelected, true);
            app.AllvariablesinMATLABworkspaceMenu.Enable = 'off';
            app.AllvariablesinMATLABworkspaceMenu.Text = 'All variables in MATLAB workspace';

            % Create SetupdataandperformanceMenu
            app.SetupdataandperformanceMenu = uimenu(app.ExportMenu);
            app.SetupdataandperformanceMenu.MenuSelectedFcn = createCallbackFcn(app, @SetupdataandperformanceMenuSelected, true);
            app.SetupdataandperformanceMenu.Enable = 'off';
            app.SetupdataandperformanceMenu.Text = 'Setup data and performance';

            % Create BackgroundgenerationdataMenu
            app.BackgroundgenerationdataMenu = uimenu(app.ExportMenu);
            app.BackgroundgenerationdataMenu.MenuSelectedFcn = createCallbackFcn(app, @BackgroundgenerationdataMenuSelected, true);
            app.BackgroundgenerationdataMenu.Enable = 'off';
            app.BackgroundgenerationdataMenu.Text = 'Background generation data';

            % Create ImageMenu
            app.ImageMenu = uimenu(app.ExportMenu);
            app.ImageMenu.Text = 'Image';

            % Create OpticresolutionMenu
            app.OpticresolutionMenu = uimenu(app.ImageMenu);
            app.OpticresolutionMenu.MenuSelectedFcn = createCallbackFcn(app, @OpticresolutionMenuSelected, true);
            app.OpticresolutionMenu.Text = 'Optic resolution';

            % Create ParaxialapproximationerrorMenu
            app.ParaxialapproximationerrorMenu = uimenu(app.ImageMenu);
            app.ParaxialapproximationerrorMenu.MenuSelectedFcn = createCallbackFcn(app, @ParaxialapproximationerrorMenuSelected, true);
            app.ParaxialapproximationerrorMenu.Text = 'Paraxial approximation error';

            % Create FieldofviewprojectionMenu
            app.FieldofviewprojectionMenu = uimenu(app.ImageMenu);
            app.FieldofviewprojectionMenu.MenuSelectedFcn = createCallbackFcn(app, @FieldofviewprojectionMenuSelected, true);
            app.FieldofviewprojectionMenu.Text = 'Field of view projection';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.Menu);
            app.ExitMenu.MenuSelectedFcn = createCallbackFcn(app, @ExitMenuSelected, true);
            app.ExitMenu.Text = 'Exit';

            % Create Documentation
            app.Documentation = uimenu(app.Menu);
            app.Documentation.MenuSelectedFcn = createCallbackFcn(app, @DocumentationMenuSelected, true);
            app.Documentation.Text = 'Documentation';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [50 12 130 130];
            app.Image.ImageSource = 'VKI LOGO.jpg';

            % Create BOSsetupcharacteristicsPanel
            app.BOSsetupcharacteristicsPanel = uipanel(app.UIFigure);
            app.BOSsetupcharacteristicsPanel.AutoResizeChildren = 'off';
            app.BOSsetupcharacteristicsPanel.TitlePosition = 'centertop';
            app.BOSsetupcharacteristicsPanel.Title = 'BOS setup characteristics';
            app.BOSsetupcharacteristicsPanel.FontWeight = 'bold';
            app.BOSsetupcharacteristicsPanel.FontSize = 15;
            app.BOSsetupcharacteristicsPanel.Position = [14 205 420 560];

            % Create EditFieldPortrait_2
            app.EditFieldPortrait_2 = uilabel(app.BOSsetupcharacteristicsPanel);
            app.EditFieldPortrait_2.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_2.Position = [231 461 82 24];
            app.EditFieldPortrait_2.Text = '';

            % Create EditFieldPortrait_1
            app.EditFieldPortrait_1 = uilabel(app.BOSsetupcharacteristicsPanel);
            app.EditFieldPortrait_1.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_1.Position = [231 494 82 24];
            app.EditFieldPortrait_1.Text = '';

            % Create DensitygradientestimationEditFieldLabel
            app.DensitygradientestimationEditFieldLabel = uilabel(app.BOSsetupcharacteristicsPanel);
            app.DensitygradientestimationEditFieldLabel.Interpreter = 'html';
            app.DensitygradientestimationEditFieldLabel.HorizontalAlignment = 'right';
            app.DensitygradientestimationEditFieldLabel.FontSize = 15;
            app.DensitygradientestimationEditFieldLabel.Position = [93 495 123 22];
            app.DensitygradientestimationEditFieldLabel.Text = 'Density gradient :';

            % Create DensitygradientestimationEditField
            app.DensitygradientestimationEditField = uieditfield(app.BOSsetupcharacteristicsPanel, 'numeric');
            app.DensitygradientestimationEditField.FontSize = 15;
            app.DensitygradientestimationEditField.Position = [232 495 80 22];

            % Create GradientregionthicknessestimationEditFieldLabel
            app.GradientregionthicknessestimationEditFieldLabel = uilabel(app.BOSsetupcharacteristicsPanel);
            app.GradientregionthicknessestimationEditFieldLabel.Interpreter = 'html';
            app.GradientregionthicknessestimationEditFieldLabel.HorizontalAlignment = 'right';
            app.GradientregionthicknessestimationEditFieldLabel.FontSize = 15;
            app.GradientregionthicknessestimationEditFieldLabel.Position = [20 462 196 22];
            app.GradientregionthicknessestimationEditFieldLabel.Text = 'Gradient region thickness :';

            % Create GradientregionthicknessestimationEditField
            app.GradientregionthicknessestimationEditField = uieditfield(app.BOSsetupcharacteristicsPanel, 'numeric');
            app.GradientregionthicknessestimationEditField.FontSize = 15;
            app.GradientregionthicknessestimationEditField.Position = [232 462 80 22];

            % Create CameraPanel_3
            app.CameraPanel_3 = uipanel(app.BOSsetupcharacteristicsPanel);
            app.CameraPanel_3.AutoResizeChildren = 'off';
            app.CameraPanel_3.TitlePosition = 'centertop';
            app.CameraPanel_3.Title = 'Camera';
            app.CameraPanel_3.FontWeight = 'bold';
            app.CameraPanel_3.FontSize = 15;
            app.CameraPanel_3.Position = [80 348 260 99];

            % Create EditFieldPortrait_4
            app.EditFieldPortrait_4 = uilabel(app.CameraPanel_3);
            app.EditFieldPortrait_4.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_4.Position = [185 40 45 24];
            app.EditFieldPortrait_4.Text = '';

            % Create EditFieldPortrait_3
            app.EditFieldPortrait_3 = uilabel(app.CameraPanel_3);
            app.EditFieldPortrait_3.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_3.Position = [100 40 45 24];
            app.EditFieldPortrait_3.Text = '';

            % Create EditFieldPortrait_5
            app.EditFieldPortrait_5 = uilabel(app.CameraPanel_3);
            app.EditFieldPortrait_5.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_5.Position = [125 9 68 24];
            app.EditFieldPortrait_5.Text = '';

            % Create ResolutionEditFieldLabel_3
            app.ResolutionEditFieldLabel_3 = uilabel(app.CameraPanel_3);
            app.ResolutionEditFieldLabel_3.Interpreter = 'html';
            app.ResolutionEditFieldLabel_3.HorizontalAlignment = 'right';
            app.ResolutionEditFieldLabel_3.Position = [24 41 66 22];
            app.ResolutionEditFieldLabel_3.Text = 'Resolution:';

            % Create ResolutionEditField_5
            app.ResolutionEditField_5 = uieditfield(app.CameraPanel_3, 'numeric');
            app.ResolutionEditField_5.Position = [101 41 43 22];

            % Create ResolutionEditField_6
            app.ResolutionEditField_6 = uieditfield(app.CameraPanel_3, 'numeric');
            app.ResolutionEditField_6.Position = [186 41 43 22];

            % Create PixelsizeEditFieldLabel
            app.PixelsizeEditFieldLabel = uilabel(app.CameraPanel_3);
            app.PixelsizeEditFieldLabel.Interpreter = 'html';
            app.PixelsizeEditFieldLabel.HorizontalAlignment = 'right';
            app.PixelsizeEditFieldLabel.Position = [20 10 81 22];
            app.PixelsizeEditFieldLabel.Text = 'Pixel size :';

            % Create PixelsizeEditField
            app.PixelsizeEditField = uieditfield(app.CameraPanel_3, 'numeric');
            app.PixelsizeEditField.Position = [126 10 66 22];

            % Create pxLabel_2
            app.pxLabel_2 = uilabel(app.CameraPanel_3);
            app.pxLabel_2.Position = [148 41 22 22];
            app.pxLabel_2.Text = 'px';

            % Create pxLabel
            app.pxLabel = uilabel(app.CameraPanel_3);
            app.pxLabel.Position = [233 41 19 22];
            app.pxLabel.Text = 'px';

            % Create xLabel_3
            app.xLabel_3 = uilabel(app.CameraPanel_3);
            app.xLabel_3.FontWeight = 'bold';
            app.xLabel_3.Position = [169 41 10 22];
            app.xLabel_3.Text = 'x';

            % Create mumLabel
            app.mumLabel = uilabel(app.CameraPanel_3);
            app.mumLabel.Interpreter = 'html';
            app.mumLabel.Position = [207 10 20 22];
            app.mumLabel.Text = '&mu;m';

            % Create ObjectivePanel
            app.ObjectivePanel = uipanel(app.BOSsetupcharacteristicsPanel);
            app.ObjectivePanel.AutoResizeChildren = 'off';
            app.ObjectivePanel.TitlePosition = 'centertop';
            app.ObjectivePanel.Title = 'Objective';
            app.ObjectivePanel.FontWeight = 'bold';
            app.ObjectivePanel.FontSize = 15;
            app.ObjectivePanel.Position = [80 202 260 128];

            % Create EditFieldPortrait_9
            app.EditFieldPortrait_9 = uilabel(app.ObjectivePanel);
            app.EditFieldPortrait_9.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_9.Position = [125 9 68 24];
            app.EditFieldPortrait_9.Text = '';

            % Create EditFieldPortrait_7
            app.EditFieldPortrait_7 = uilabel(app.ObjectivePanel);
            app.EditFieldPortrait_7.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_7.Position = [150 40 35 24];
            app.EditFieldPortrait_7.Text = '';

            % Create EditFieldPortrait_8
            app.EditFieldPortrait_8 = uilabel(app.ObjectivePanel);
            app.EditFieldPortrait_8.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_8.Position = [205 40 35 24];
            app.EditFieldPortrait_8.Text = '';

            % Create EditFieldPortrait_6
            app.EditFieldPortrait_6 = uilabel(app.ObjectivePanel);
            app.EditFieldPortrait_6.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_6.Position = [125 71 72 24];
            app.EditFieldPortrait_6.Text = '';

            % Create fLabel
            app.fLabel = uilabel(app.ObjectivePanel);
            app.fLabel.Interpreter = 'html';
            app.fLabel.HorizontalAlignment = 'right';
            app.fLabel.Position = [87 72 17 22];
            app.fLabel.Text = 'f : ';

            % Create fEditField
            app.fEditField = uieditfield(app.ObjectivePanel, 'numeric');
            app.fEditField.Position = [126 72 70 22];

            % Create f_rangeEditFieldLabel
            app.f_rangeEditFieldLabel = uilabel(app.ObjectivePanel);
            app.f_rangeEditFieldLabel.Interpreter = 'html';
            app.f_rangeEditFieldLabel.HorizontalAlignment = 'right';
            app.f_rangeEditFieldLabel.VerticalAlignment = 'bottom';
            app.f_rangeEditFieldLabel.Position = [46 41 57 22];
            app.f_rangeEditFieldLabel.Text = 'f<sub>#</sub> range :';

            % Create f_rangeEditField
            app.f_rangeEditField = uieditfield(app.ObjectivePanel, 'numeric');
            app.f_rangeEditField.Position = [151 41 33 22];

            % Create fsubselectedsubLabel
            app.fsubselectedsubLabel = uilabel(app.ObjectivePanel);
            app.fsubselectedsubLabel.Interpreter = 'html';
            app.fsubselectedsubLabel.HorizontalAlignment = 'right';
            app.fsubselectedsubLabel.Position = [40 10 61 22];
            app.fsubselectedsubLabel.Text = 'f<sub>#-selected</sub> :';

            % Create toLabel
            app.toLabel = uilabel(app.ObjectivePanel);
            app.toLabel.Position = [190 41 10 22];
            app.toLabel.Text = 'to';

            % Create fromLabel
            app.fromLabel = uilabel(app.ObjectivePanel);
            app.fromLabel.Position = [117 41 28 22];
            app.fromLabel.Text = 'from';

            % Create f_rangeEditField_2
            app.f_rangeEditField_2 = uieditfield(app.ObjectivePanel, 'numeric');
            app.f_rangeEditField_2.Position = [206 41 33 22];

            % Create mmEditFieldLabel_2
            app.mmEditFieldLabel_2 = uilabel(app.ObjectivePanel);
            app.mmEditFieldLabel_2.Interpreter = 'html';
            app.mmEditFieldLabel_2.Position = [207 72 20 22];
            app.mmEditFieldLabel_2.Text = 'mm';

            % Create fsubselectedsubEditField
            app.fsubselectedsubEditField = uieditfield(app.ObjectivePanel, 'numeric');
            app.fsubselectedsubEditField.Position = [126 10 66 22];

            % Create GeometricalInputsPanel
            app.GeometricalInputsPanel = uipanel(app.BOSsetupcharacteristicsPanel);
            app.GeometricalInputsPanel.AutoResizeChildren = 'off';
            app.GeometricalInputsPanel.TitlePosition = 'centertop';
            app.GeometricalInputsPanel.Title = 'Geometrical Inputs';
            app.GeometricalInputsPanel.FontWeight = 'bold';
            app.GeometricalInputsPanel.FontSize = 15;
            app.GeometricalInputsPanel.Position = [80 56 260 128];

            % Create EditFieldPortrait_13
            app.EditFieldPortrait_13 = uilabel(app.GeometricalInputsPanel);
            app.EditFieldPortrait_13.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_13.Position = [125 8 72 24];
            app.EditFieldPortrait_13.Text = '';

            % Create EditFieldPortrait_11
            app.EditFieldPortrait_11 = uilabel(app.GeometricalInputsPanel);
            app.EditFieldPortrait_11.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_11.Position = [72 41 47 24];
            app.EditFieldPortrait_11.Text = '';

            % Create EditFieldPortrait_12
            app.EditFieldPortrait_12 = uilabel(app.GeometricalInputsPanel);
            app.EditFieldPortrait_12.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_12.Position = [171 41 47 24];
            app.EditFieldPortrait_12.Text = '';

            % Create EditFieldPortrait_10
            app.EditFieldPortrait_10 = uilabel(app.GeometricalInputsPanel);
            app.EditFieldPortrait_10.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_10.Position = [125 70 72 24];
            app.EditFieldPortrait_10.Text = '';

            % Create mmLabel_15
            app.mmLabel_15 = uilabel(app.GeometricalInputsPanel);
            app.mmLabel_15.Interpreter = 'html';
            app.mmLabel_15.Position = [207 71 25 22];
            app.mmLabel_15.Text = 'mm';

            % Create ZsubgradientsubLabel
            app.ZsubgradientsubLabel = uilabel(app.GeometricalInputsPanel);
            app.ZsubgradientsubLabel.Interpreter = 'html';
            app.ZsubgradientsubLabel.HorizontalAlignment = 'right';
            app.ZsubgradientsubLabel.Position = [46 71 55 22];
            app.ZsubgradientsubLabel.Text = 'Z<sub>gradient</sub> :';

            % Create ZsubgradientsubEditField
            app.ZsubgradientsubEditField = uieditfield(app.GeometricalInputsPanel, 'numeric');
            app.ZsubgradientsubEditField.Position = [126 71 70 22];

            % Create ResolutionEditFieldLabel_4
            app.ResolutionEditFieldLabel_4 = uilabel(app.GeometricalInputsPanel);
            app.ResolutionEditFieldLabel_4.Interpreter = 'html';
            app.ResolutionEditFieldLabel_4.HorizontalAlignment = 'right';
            app.ResolutionEditFieldLabel_4.Position = [28 42 35 22];
            app.ResolutionEditFieldLabel_4.Text = 'FOV :';

            % Create ResolutionEditField_7
            app.ResolutionEditField_7 = uieditfield(app.GeometricalInputsPanel, 'numeric');
            app.ResolutionEditField_7.Position = [73 42 45 22];

            % Create ResolutionEditField_8
            app.ResolutionEditField_8 = uieditfield(app.GeometricalInputsPanel, 'numeric');
            app.ResolutionEditField_8.Position = [172 42 45 22];

            % Create pxLabel_8
            app.pxLabel_8 = uilabel(app.GeometricalInputsPanel);
            app.pxLabel_8.Interpreter = 'html';
            app.pxLabel_8.Position = [207 9 25 22];
            app.pxLabel_8.Text = 'px';

            % Create IWLabel
            app.IWLabel = uilabel(app.GeometricalInputsPanel);
            app.IWLabel.Interpreter = 'html';
            app.IWLabel.HorizontalAlignment = 'right';
            app.IWLabel.Position = [74 9 27 22];
            app.IWLabel.Text = 'IW :';

            % Create IWEditField
            app.IWEditField = uieditfield(app.GeometricalInputsPanel, 'numeric');
            app.IWEditField.Position = [126 9 70 22];

            % Create mmLabel
            app.mmLabel = uilabel(app.GeometricalInputsPanel);
            app.mmLabel.Position = [122 42 20 22];
            app.mmLabel.Text = 'mm';

            % Create mmLabel_2
            app.mmLabel_2 = uilabel(app.GeometricalInputsPanel);
            app.mmLabel_2.Position = [221 42 20 22];
            app.mmLabel_2.Text = 'mm';

            % Create xLabel_4
            app.xLabel_4 = uilabel(app.GeometricalInputsPanel);
            app.xLabel_4.FontWeight = 'bold';
            app.xLabel_4.Position = [154 42 10 22];
            app.xLabel_4.Text = 'x';

            % Create kgmsup4supLabel
            app.kgmsup4supLabel = uilabel(app.BOSsetupcharacteristicsPanel);
            app.kgmsup4supLabel.Interpreter = 'html';
            app.kgmsup4supLabel.FontSize = 15;
            app.kgmsup4supLabel.Position = [322 495 53 22];
            app.kgmsup4supLabel.Text = 'kg / m<sup>4</sup>';

            % Create mmLabel_16
            app.mmLabel_16 = uilabel(app.BOSsetupcharacteristicsPanel);
            app.mmLabel_16.Interpreter = 'html';
            app.mmLabel_16.FontSize = 15;
            app.mmLabel_16.Position = [322 462 30 22];
            app.mmLabel_16.Text = 'mm';

            % Create Label
            app.Label = uilabel(app.BOSsetupcharacteristicsPanel);
            app.Label.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Label.Position = [111 13 199 31];
            app.Label.Text = '';

            % Create CompareSwitchLabel
            app.CompareSwitchLabel = uilabel(app.BOSsetupcharacteristicsPanel);
            app.CompareSwitchLabel.HorizontalAlignment = 'center';
            app.CompareSwitchLabel.FontSize = 15;
            app.CompareSwitchLabel.FontWeight = 'bold';
            app.CompareSwitchLabel.Position = [119 17 70 22];
            app.CompareSwitchLabel.Text = 'Compare';

            % Create CompareSwitch
            app.CompareSwitch = uiswitch(app.BOSsetupcharacteristicsPanel, 'slider');
            app.CompareSwitch.ValueChangedFcn = createCallbackFcn(app, @CompareSwitchValueChanged, true);
            app.CompareSwitch.FontSize = 15;
            app.CompareSwitch.FontWeight = 'bold';
            app.CompareSwitch.Position = [229 18 45 20];

            % Create OutputsTab
            app.OutputsTab = uitabgroup(app.UIFigure);
            app.OutputsTab.Position = [448 12 715 753];

            % Create ResolutionTab
            app.ResolutionTab = uitab(app.OutputsTab);
            app.ResolutionTab.Title = 'Resolution';

            % Create OpticResolutionUIAxes
            app.OpticResolutionUIAxes = uiaxes(app.ResolutionTab);
            title(app.OpticResolutionUIAxes, 'Optic resolution')
            xlabel(app.OpticResolutionUIAxes, 'f_# [-]')
            ylabel(app.OpticResolutionUIAxes, 'r_t [mm]')
            app.OpticResolutionUIAxes.LabelFontSizeMultiplier = 1;
            app.OpticResolutionUIAxes.PlotBoxAspectRatio = [1.2752808988764 1 1];
            app.OpticResolutionUIAxes.XMinorTick = 'on';
            app.OpticResolutionUIAxes.YMinorTick = 'on';
            app.OpticResolutionUIAxes.XGrid = 'on';
            app.OpticResolutionUIAxes.YGrid = 'on';
            app.OpticResolutionUIAxes.FontSize = 15;
            app.OpticResolutionUIAxes.Position = [5 330 439 381];

            % Create SetupscomparisonPanel
            app.SetupscomparisonPanel = uipanel(app.ResolutionTab);
            app.SetupscomparisonPanel.TitlePosition = 'centertop';
            app.SetupscomparisonPanel.Title = 'Setups comparison';
            app.SetupscomparisonPanel.FontWeight = 'bold';
            app.SetupscomparisonPanel.FontSize = 17;
            app.SetupscomparisonPanel.Position = [8 15 700 302];

            % Create Setup1Panel
            app.Setup1Panel = uipanel(app.SetupscomparisonPanel);
            app.Setup1Panel.TitlePosition = 'centertop';
            app.Setup1Panel.Title = 'Setup 1';
            app.Setup1Panel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Setup1Panel.FontWeight = 'bold';
            app.Setup1Panel.FontSize = 15;
            app.Setup1Panel.Position = [18 16 205 244];

            % Create fsubsubLabel
            app.fsubsubLabel = uilabel(app.Setup1Panel);
            app.fsubsubLabel.Interpreter = 'html';
            app.fsubsubLabel.HorizontalAlignment = 'right';
            app.fsubsubLabel.Position = [40 70 25 22];
            app.fsubsubLabel.Text = 'f<sub>#</sub> :';

            % Create fsubsubEditField
            app.fsubsubEditField = uieditfield(app.Setup1Panel, 'numeric');
            app.fsubsubEditField.Editable = 'off';
            app.fsubsubEditField.Position = [80 70 66 22];

            % Create rsubtsubLabel
            app.rsubtsubLabel = uilabel(app.Setup1Panel);
            app.rsubtsubLabel.Interpreter = 'html';
            app.rsubtsubLabel.HorizontalAlignment = 'right';
            app.rsubtsubLabel.Position = [47 129 18 22];
            app.rsubtsubLabel.Text = 'r<sub>t</sub> :';

            % Create rsubtsubEditField
            app.rsubtsubEditField = uieditfield(app.Setup1Panel, 'numeric');
            app.rsubtsubEditField.Editable = 'off';
            app.rsubtsubEditField.Position = [80 129 66 22];

            % Create rsubIPsubLabel_2
            app.rsubIPsubLabel_2 = uilabel(app.Setup1Panel);
            app.rsubIPsubLabel_2.Interpreter = 'html';
            app.rsubIPsubLabel_2.HorizontalAlignment = 'right';
            app.rsubIPsubLabel_2.Position = [40 99 25 22];
            app.rsubIPsubLabel_2.Text = 'r<sub>IP</sub> :';

            % Create rsubIPsubEditField
            app.rsubIPsubEditField = uieditfield(app.Setup1Panel, 'numeric');
            app.rsubIPsubEditField.Editable = 'off';
            app.rsubIPsubEditField.Position = [80 99 66 22];

            % Create ConfEditFieldLabel
            app.ConfEditFieldLabel = uilabel(app.Setup1Panel);
            app.ConfEditFieldLabel.Interpreter = 'html';
            app.ConfEditFieldLabel.HorizontalAlignment = 'right';
            app.ConfEditFieldLabel.Position = [9 159 38 22];
            app.ConfEditFieldLabel.Text = 'Conf :';

            % Create ConfEditField
            app.ConfEditField = uieditfield(app.Setup1Panel, 'text');
            app.ConfEditField.Editable = 'off';
            app.ConfEditField.Position = [53 159 140 22];

            % Create FOVsubeffsubEditField_2Label
            app.FOVsubeffsubEditField_2Label = uilabel(app.Setup1Panel);
            app.FOVsubeffsubEditField_2Label.Interpreter = 'html';
            app.FOVsubeffsubEditField_2Label.HorizontalAlignment = 'right';
            app.FOVsubeffsubEditField_2Label.Position = [4 41 61 22];
            app.FOVsubeffsubEditField_2Label.Text = 'FOV<sub>eff - x</sub> :';

            % Create FOVsubeffsubEditField_2
            app.FOVsubeffsubEditField_2 = uieditfield(app.Setup1Panel, 'numeric');
            app.FOVsubeffsubEditField_2.Editable = 'off';
            app.FOVsubeffsubEditField_2.Position = [80 41 66 22];

            % Create DeltaXEditField_2Label
            app.DeltaXEditField_2Label = uilabel(app.Setup1Panel);
            app.DeltaXEditField_2Label.Interpreter = 'html';
            app.DeltaXEditField_2Label.HorizontalAlignment = 'right';
            app.DeltaXEditField_2Label.Position = [36 9 29 22];
            app.DeltaXEditField_2Label.Text = '&Delta;X :';

            % Create DeltaXEditField_2
            app.DeltaXEditField_2 = uieditfield(app.Setup1Panel, 'numeric');
            app.DeltaXEditField_2.Editable = 'off';
            app.DeltaXEditField_2.Position = [80 9 66 22];

            % Create LoadconfigurationButton
            app.LoadconfigurationButton = uibutton(app.Setup1Panel, 'push');
            app.LoadconfigurationButton.ButtonPushedFcn = createCallbackFcn(app, @LoadconfigurationButtonPushed, true);
            app.LoadconfigurationButton.BackgroundColor = [0.8902 0.8902 0.8902];
            app.LoadconfigurationButton.FontWeight = 'bold';
            app.LoadconfigurationButton.Enable = 'off';
            app.LoadconfigurationButton.Position = [11 189 124 22];
            app.LoadconfigurationButton.Text = 'Load configuration';

            % Create mmLabel_3
            app.mmLabel_3 = uilabel(app.Setup1Panel);
            app.mmLabel_3.Interpreter = 'html';
            app.mmLabel_3.Position = [154 129 20 22];
            app.mmLabel_3.Text = 'mm';

            % Create mmLabel_4
            app.mmLabel_4 = uilabel(app.Setup1Panel);
            app.mmLabel_4.Interpreter = 'html';
            app.mmLabel_4.Position = [154 99 20 22];
            app.mmLabel_4.Text = 'mm';

            % Create mmLabel_5
            app.mmLabel_5 = uilabel(app.Setup1Panel);
            app.mmLabel_5.Interpreter = 'html';
            app.mmLabel_5.Position = [154 41 20 22];
            app.mmLabel_5.Text = 'mm';

            % Create pxLabel_4
            app.pxLabel_4 = uilabel(app.Setup1Panel);
            app.pxLabel_4.Interpreter = 'html';
            app.pxLabel_4.Position = [154 12 20 22];
            app.pxLabel_4.Text = 'px';

            % Create ClearButton
            app.ClearButton = uibutton(app.Setup1Panel, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.BackgroundColor = [0.8902 0.8902 0.8902];
            app.ClearButton.FontWeight = 'bold';
            app.ClearButton.Enable = 'off';
            app.ClearButton.Position = [148 189 46 22];
            app.ClearButton.Text = 'Clear';

            % Create Setup2Panel
            app.Setup2Panel = uipanel(app.SetupscomparisonPanel);
            app.Setup2Panel.TitlePosition = 'centertop';
            app.Setup2Panel.Title = 'Setup 2';
            app.Setup2Panel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Setup2Panel.FontWeight = 'bold';
            app.Setup2Panel.FontSize = 15;
            app.Setup2Panel.Position = [247 16 205 244];

            % Create fsubsubEditField_2Label
            app.fsubsubEditField_2Label = uilabel(app.Setup2Panel);
            app.fsubsubEditField_2Label.Interpreter = 'html';
            app.fsubsubEditField_2Label.HorizontalAlignment = 'right';
            app.fsubsubEditField_2Label.Position = [40 70 25 22];
            app.fsubsubEditField_2Label.Text = 'f<sub>#</sub> :';

            % Create fsubsubEditField_2
            app.fsubsubEditField_2 = uieditfield(app.Setup2Panel, 'numeric');
            app.fsubsubEditField_2.Editable = 'off';
            app.fsubsubEditField_2.Position = [80 70 66 22];

            % Create rsubtsubLabel_2
            app.rsubtsubLabel_2 = uilabel(app.Setup2Panel);
            app.rsubtsubLabel_2.Interpreter = 'html';
            app.rsubtsubLabel_2.HorizontalAlignment = 'right';
            app.rsubtsubLabel_2.Position = [47 129 18 22];
            app.rsubtsubLabel_2.Text = 'r<sub>t</sub> :';

            % Create rsubtsubEditField_3
            app.rsubtsubEditField_3 = uieditfield(app.Setup2Panel, 'numeric');
            app.rsubtsubEditField_3.Editable = 'off';
            app.rsubtsubEditField_3.Position = [80 129 66 22];

            % Create mmLabel_9
            app.mmLabel_9 = uilabel(app.Setup2Panel);
            app.mmLabel_9.Interpreter = 'html';
            app.mmLabel_9.Position = [154 129 20 22];
            app.mmLabel_9.Text = 'mm';

            % Create rsubIPsubLabel_3
            app.rsubIPsubLabel_3 = uilabel(app.Setup2Panel);
            app.rsubIPsubLabel_3.Interpreter = 'html';
            app.rsubIPsubLabel_3.HorizontalAlignment = 'right';
            app.rsubIPsubLabel_3.Position = [40 99 25 22];
            app.rsubIPsubLabel_3.Text = 'r<sub>IP</sub> :';

            % Create rsubIPsubEditField_3
            app.rsubIPsubEditField_3 = uieditfield(app.Setup2Panel, 'numeric');
            app.rsubIPsubEditField_3.Editable = 'off';
            app.rsubIPsubEditField_3.Position = [80 99 66 22];

            % Create mmLabel_10
            app.mmLabel_10 = uilabel(app.Setup2Panel);
            app.mmLabel_10.Interpreter = 'html';
            app.mmLabel_10.Position = [154 99 20 22];
            app.mmLabel_10.Text = 'mm';

            % Create ConfEditField_2Label
            app.ConfEditField_2Label = uilabel(app.Setup2Panel);
            app.ConfEditField_2Label.Interpreter = 'html';
            app.ConfEditField_2Label.HorizontalAlignment = 'right';
            app.ConfEditField_2Label.Position = [9 159 38 22];
            app.ConfEditField_2Label.Text = 'Conf :';

            % Create ConfEditField_2
            app.ConfEditField_2 = uieditfield(app.Setup2Panel, 'text');
            app.ConfEditField_2.Editable = 'off';
            app.ConfEditField_2.Position = [53 159 140 22];

            % Create FOVsubeffsubEditField_2Label_2
            app.FOVsubeffsubEditField_2Label_2 = uilabel(app.Setup2Panel);
            app.FOVsubeffsubEditField_2Label_2.Interpreter = 'html';
            app.FOVsubeffsubEditField_2Label_2.HorizontalAlignment = 'right';
            app.FOVsubeffsubEditField_2Label_2.Position = [4 41 61 22];
            app.FOVsubeffsubEditField_2Label_2.Text = 'FOV<sub>eff - x</sub> :';

            % Create FOVsubeffsubEditField_3
            app.FOVsubeffsubEditField_3 = uieditfield(app.Setup2Panel, 'numeric');
            app.FOVsubeffsubEditField_3.Editable = 'off';
            app.FOVsubeffsubEditField_3.Position = [80 41 66 22];

            % Create mmLabel_11
            app.mmLabel_11 = uilabel(app.Setup2Panel);
            app.mmLabel_11.Interpreter = 'html';
            app.mmLabel_11.Position = [154 41 20 22];
            app.mmLabel_11.Text = 'mm';

            % Create DeltaXEditField_2Label_2
            app.DeltaXEditField_2Label_2 = uilabel(app.Setup2Panel);
            app.DeltaXEditField_2Label_2.Interpreter = 'html';
            app.DeltaXEditField_2Label_2.HorizontalAlignment = 'right';
            app.DeltaXEditField_2Label_2.Position = [36 9 29 22];
            app.DeltaXEditField_2Label_2.Text = '&Delta;X :';

            % Create DeltaXEditField_3
            app.DeltaXEditField_3 = uieditfield(app.Setup2Panel, 'numeric');
            app.DeltaXEditField_3.Editable = 'off';
            app.DeltaXEditField_3.Position = [80 9 66 22];

            % Create pxLabel_5
            app.pxLabel_5 = uilabel(app.Setup2Panel);
            app.pxLabel_5.Interpreter = 'html';
            app.pxLabel_5.Position = [154 12 20 22];
            app.pxLabel_5.Text = 'px';

            % Create LoadconfigurationButton_2
            app.LoadconfigurationButton_2 = uibutton(app.Setup2Panel, 'push');
            app.LoadconfigurationButton_2.ButtonPushedFcn = createCallbackFcn(app, @LoadconfigurationButton_2Pushed, true);
            app.LoadconfigurationButton_2.BackgroundColor = [0.8902 0.8902 0.8902];
            app.LoadconfigurationButton_2.FontWeight = 'bold';
            app.LoadconfigurationButton_2.Enable = 'off';
            app.LoadconfigurationButton_2.Position = [11 189 124 22];
            app.LoadconfigurationButton_2.Text = 'Load configuration';

            % Create ClearButton_2
            app.ClearButton_2 = uibutton(app.Setup2Panel, 'push');
            app.ClearButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_2Pushed, true);
            app.ClearButton_2.BackgroundColor = [0.8902 0.8902 0.8902];
            app.ClearButton_2.FontWeight = 'bold';
            app.ClearButton_2.Enable = 'off';
            app.ClearButton_2.Position = [148 189 46 22];
            app.ClearButton_2.Text = 'Clear';

            % Create Setup3Panel
            app.Setup3Panel = uipanel(app.SetupscomparisonPanel);
            app.Setup3Panel.TitlePosition = 'centertop';
            app.Setup3Panel.Title = 'Setup 3';
            app.Setup3Panel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Setup3Panel.FontWeight = 'bold';
            app.Setup3Panel.FontSize = 15;
            app.Setup3Panel.Position = [476 16 205 244];

            % Create fsubsubEditField_3Label
            app.fsubsubEditField_3Label = uilabel(app.Setup3Panel);
            app.fsubsubEditField_3Label.Interpreter = 'html';
            app.fsubsubEditField_3Label.HorizontalAlignment = 'right';
            app.fsubsubEditField_3Label.Position = [40 70 25 22];
            app.fsubsubEditField_3Label.Text = 'f<sub>#</sub> :';

            % Create fsubsubEditField_3
            app.fsubsubEditField_3 = uieditfield(app.Setup3Panel, 'numeric');
            app.fsubsubEditField_3.Editable = 'off';
            app.fsubsubEditField_3.Position = [80 70 66 22];

            % Create rsubtsubLabel_3
            app.rsubtsubLabel_3 = uilabel(app.Setup3Panel);
            app.rsubtsubLabel_3.Interpreter = 'html';
            app.rsubtsubLabel_3.HorizontalAlignment = 'right';
            app.rsubtsubLabel_3.Position = [47 129 18 22];
            app.rsubtsubLabel_3.Text = 'r<sub>t</sub> :';

            % Create rsubtsubEditField_4
            app.rsubtsubEditField_4 = uieditfield(app.Setup3Panel, 'numeric');
            app.rsubtsubEditField_4.Editable = 'off';
            app.rsubtsubEditField_4.Position = [80 129 66 22];

            % Create mmLabel_12
            app.mmLabel_12 = uilabel(app.Setup3Panel);
            app.mmLabel_12.Interpreter = 'html';
            app.mmLabel_12.Position = [154 129 20 22];
            app.mmLabel_12.Text = 'mm';

            % Create rsubIPsubLabel_4
            app.rsubIPsubLabel_4 = uilabel(app.Setup3Panel);
            app.rsubIPsubLabel_4.Interpreter = 'html';
            app.rsubIPsubLabel_4.HorizontalAlignment = 'right';
            app.rsubIPsubLabel_4.Position = [40 99 25 22];
            app.rsubIPsubLabel_4.Text = 'r<sub>IP</sub> :';

            % Create rsubIPsubEditField_4
            app.rsubIPsubEditField_4 = uieditfield(app.Setup3Panel, 'numeric');
            app.rsubIPsubEditField_4.Editable = 'off';
            app.rsubIPsubEditField_4.Position = [80 99 66 22];

            % Create mmLabel_13
            app.mmLabel_13 = uilabel(app.Setup3Panel);
            app.mmLabel_13.Interpreter = 'html';
            app.mmLabel_13.Position = [154 99 20 22];
            app.mmLabel_13.Text = 'mm';

            % Create ConfEditField_3Label
            app.ConfEditField_3Label = uilabel(app.Setup3Panel);
            app.ConfEditField_3Label.Interpreter = 'html';
            app.ConfEditField_3Label.HorizontalAlignment = 'right';
            app.ConfEditField_3Label.Position = [9 159 38 22];
            app.ConfEditField_3Label.Text = 'Conf :';

            % Create ConfEditField_3
            app.ConfEditField_3 = uieditfield(app.Setup3Panel, 'text');
            app.ConfEditField_3.Editable = 'off';
            app.ConfEditField_3.Position = [53 159 140 22];

            % Create FOVsubeffsubEditField_2Label_3
            app.FOVsubeffsubEditField_2Label_3 = uilabel(app.Setup3Panel);
            app.FOVsubeffsubEditField_2Label_3.Interpreter = 'html';
            app.FOVsubeffsubEditField_2Label_3.HorizontalAlignment = 'right';
            app.FOVsubeffsubEditField_2Label_3.Position = [4 41 61 22];
            app.FOVsubeffsubEditField_2Label_3.Text = 'FOV<sub>eff - x</sub> :';

            % Create FOVsubeffsubEditField_4
            app.FOVsubeffsubEditField_4 = uieditfield(app.Setup3Panel, 'numeric');
            app.FOVsubeffsubEditField_4.Editable = 'off';
            app.FOVsubeffsubEditField_4.Position = [80 41 66 22];

            % Create mmLabel_14
            app.mmLabel_14 = uilabel(app.Setup3Panel);
            app.mmLabel_14.Interpreter = 'html';
            app.mmLabel_14.Position = [154 41 20 22];
            app.mmLabel_14.Text = 'mm';

            % Create DeltaXEditField_2Label_3
            app.DeltaXEditField_2Label_3 = uilabel(app.Setup3Panel);
            app.DeltaXEditField_2Label_3.Interpreter = 'html';
            app.DeltaXEditField_2Label_3.HorizontalAlignment = 'right';
            app.DeltaXEditField_2Label_3.Position = [36 9 29 22];
            app.DeltaXEditField_2Label_3.Text = '&Delta;X :';

            % Create DeltaXEditField_4
            app.DeltaXEditField_4 = uieditfield(app.Setup3Panel, 'numeric');
            app.DeltaXEditField_4.Editable = 'off';
            app.DeltaXEditField_4.Position = [80 9 66 22];

            % Create pxLabel_6
            app.pxLabel_6 = uilabel(app.Setup3Panel);
            app.pxLabel_6.Interpreter = 'html';
            app.pxLabel_6.Position = [154 12 20 22];
            app.pxLabel_6.Text = 'px';

            % Create LoadconfigurationButton_3
            app.LoadconfigurationButton_3 = uibutton(app.Setup3Panel, 'push');
            app.LoadconfigurationButton_3.ButtonPushedFcn = createCallbackFcn(app, @LoadconfigurationButton_3Pushed, true);
            app.LoadconfigurationButton_3.BackgroundColor = [0.8902 0.8902 0.8902];
            app.LoadconfigurationButton_3.FontWeight = 'bold';
            app.LoadconfigurationButton_3.Enable = 'off';
            app.LoadconfigurationButton_3.Position = [11 189 124 22];
            app.LoadconfigurationButton_3.Text = 'Load configuration';

            % Create ClearButton_3
            app.ClearButton_3 = uibutton(app.Setup3Panel, 'push');
            app.ClearButton_3.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_3Pushed, true);
            app.ClearButton_3.BackgroundColor = [0.8902 0.8902 0.8902];
            app.ClearButton_3.FontWeight = 'bold';
            app.ClearButton_3.Enable = 'off';
            app.ClearButton_3.Position = [148 189 46 22];
            app.ClearButton_3.Text = 'Clear';

            % Create SetupcharacteristicsPanel
            app.SetupcharacteristicsPanel = uipanel(app.ResolutionTab);
            app.SetupcharacteristicsPanel.TitlePosition = 'centertop';
            app.SetupcharacteristicsPanel.Title = 'Setup characteristics';
            app.SetupcharacteristicsPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SetupcharacteristicsPanel.FontWeight = 'bold';
            app.SetupcharacteristicsPanel.FontSize = 15;
            app.SetupcharacteristicsPanel.Position = [457 389 249 281];

            % Create rsubtsubEditField_2Label
            app.rsubtsubEditField_2Label = uilabel(app.SetupcharacteristicsPanel);
            app.rsubtsubEditField_2Label.Interpreter = 'html';
            app.rsubtsubEditField_2Label.HorizontalAlignment = 'right';
            app.rsubtsubEditField_2Label.Position = [80 218 39 22];
            app.rsubtsubEditField_2Label.Text = 'r<sub>t</sub> :';

            % Create rsubtsubEditField_2
            app.rsubtsubEditField_2 = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.rsubtsubEditField_2.Editable = 'off';
            app.rsubtsubEditField_2.Position = [135 218 75 22];

            % Create rsubIPsubLabel
            app.rsubIPsubLabel = uilabel(app.SetupcharacteristicsPanel);
            app.rsubIPsubLabel.Interpreter = 'html';
            app.rsubIPsubLabel.HorizontalAlignment = 'right';
            app.rsubIPsubLabel.Position = [69 177 50 22];
            app.rsubIPsubLabel.Text = 'r<sub>IP</sub> :';

            % Create rsubIPsubEditField_2
            app.rsubIPsubEditField_2 = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.rsubIPsubEditField_2.Editable = 'off';
            app.rsubIPsubEditField_2.Position = [135 177 75 22];

            % Create pixelprojEditFieldLabel
            app.pixelprojEditFieldLabel = uilabel(app.SetupcharacteristicsPanel);
            app.pixelprojEditFieldLabel.Interpreter = 'html';
            app.pixelprojEditFieldLabel.HorizontalAlignment = 'right';
            app.pixelprojEditFieldLabel.Position = [1 56 118 22];
            app.pixelprojEditFieldLabel.Text = 'Pixel projection size :';

            % Create pixelprojEditField
            app.pixelprojEditField = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.pixelprojEditField.Editable = 'off';
            app.pixelprojEditField.Position = [135 56 75 22];

            % Create DeltaXEditFieldLabel
            app.DeltaXEditFieldLabel = uilabel(app.SetupcharacteristicsPanel);
            app.DeltaXEditFieldLabel.Interpreter = 'html';
            app.DeltaXEditFieldLabel.HorizontalAlignment = 'right';
            app.DeltaXEditFieldLabel.Position = [80 136 39 22];
            app.DeltaXEditFieldLabel.Text = '&Delta;X :';

            % Create DeltaXEditField
            app.DeltaXEditField = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.DeltaXEditField.Editable = 'off';
            app.DeltaXEditField.Position = [135 136 75 22];

            % Create MEditFieldLabel
            app.MEditFieldLabel = uilabel(app.SetupcharacteristicsPanel);
            app.MEditFieldLabel.Interpreter = 'html';
            app.MEditFieldLabel.HorizontalAlignment = 'right';
            app.MEditFieldLabel.Position = [94 96 25 22];
            app.MEditFieldLabel.Text = 'M :';

            % Create MEditField
            app.MEditField = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.MEditField.Editable = 'off';
            app.MEditField.Position = [135 96 75 22];

            % Create FOVsubeffsubEditFieldLabel
            app.FOVsubeffsubEditFieldLabel = uilabel(app.SetupcharacteristicsPanel);
            app.FOVsubeffsubEditFieldLabel.Interpreter = 'html';
            app.FOVsubeffsubEditFieldLabel.HorizontalAlignment = 'right';
            app.FOVsubeffsubEditFieldLabel.Position = [53 14 66 22];
            app.FOVsubeffsubEditFieldLabel.Text = 'FOV<sub>eff - x</sub> :';

            % Create FOVsubeffsubEditField
            app.FOVsubeffsubEditField = uieditfield(app.SetupcharacteristicsPanel, 'numeric');
            app.FOVsubeffsubEditField.Editable = 'off';
            app.FOVsubeffsubEditField.Position = [135 14 75 22];

            % Create mmLabel_7
            app.mmLabel_7 = uilabel(app.SetupcharacteristicsPanel);
            app.mmLabel_7.Interpreter = 'html';
            app.mmLabel_7.Position = [215 218 20 22];
            app.mmLabel_7.Text = 'mm';

            % Create mmLabel_8
            app.mmLabel_8 = uilabel(app.SetupcharacteristicsPanel);
            app.mmLabel_8.Interpreter = 'html';
            app.mmLabel_8.Position = [215 177 20 22];
            app.mmLabel_8.Text = 'mm';

            % Create pxLabel_3
            app.pxLabel_3 = uilabel(app.SetupcharacteristicsPanel);
            app.pxLabel_3.Interpreter = 'html';
            app.pxLabel_3.Position = [215 136 20 22];
            app.pxLabel_3.Text = 'px';

            % Create dpiLabel
            app.dpiLabel = uilabel(app.SetupcharacteristicsPanel);
            app.dpiLabel.Interpreter = 'html';
            app.dpiLabel.Position = [215 56 20 22];
            app.dpiLabel.Text = 'dpi';

            % Create mmLabel_17
            app.mmLabel_17 = uilabel(app.SetupcharacteristicsPanel);
            app.mmLabel_17.Interpreter = 'html';
            app.mmLabel_17.Position = [215 16 25 22];
            app.mmLabel_17.Text = 'mm';

            % Create SetupcharacteristicsTab
            app.SetupcharacteristicsTab = uitab(app.OutputsTab);
            app.SetupcharacteristicsTab.Title = 'Setup characteristics';

            % Create FOVProjectionUIAxes
            app.FOVProjectionUIAxes = uiaxes(app.SetupcharacteristicsTab);
            title(app.FOVProjectionUIAxes, 'Setup field of view projection')
            xlabel(app.FOVProjectionUIAxes, 'Z [mm]')
            ylabel(app.FOVProjectionUIAxes, 'Y [mm]')
            zlabel(app.FOVProjectionUIAxes, 'X [mm]')
            app.FOVProjectionUIAxes.LabelFontSizeMultiplier = 1;
            app.FOVProjectionUIAxes.DataAspectRatio = [1 1 1];
            app.FOVProjectionUIAxes.PlotBoxAspectRatio = [2.2332268370607 1 1];
            app.FOVProjectionUIAxes.XMinorTick = 'on';
            app.FOVProjectionUIAxes.YMinorTick = 'on';
            app.FOVProjectionUIAxes.ZMinorTick = 'on';
            app.FOVProjectionUIAxes.XGrid = 'on';
            app.FOVProjectionUIAxes.XMinorGrid = 'on';
            app.FOVProjectionUIAxes.YGrid = 'on';
            app.FOVProjectionUIAxes.YMinorGrid = 'on';
            app.FOVProjectionUIAxes.ZGrid = 'on';
            app.FOVProjectionUIAxes.ZMinorGrid = 'on';
            app.FOVProjectionUIAxes.FontSize = 15;
            app.FOVProjectionUIAxes.Position = [258 13 403 293];

            % Create ParaxialApproximationErrorUIAxes
            app.ParaxialApproximationErrorUIAxes = uiaxes(app.SetupcharacteristicsTab);
            title(app.ParaxialApproximationErrorUIAxes, 'Paraxial approximation error')
            xlabel(app.ParaxialApproximationErrorUIAxes, 'X [cm]')
            ylabel(app.ParaxialApproximationErrorUIAxes, 'Y [cm]')
            zlabel(app.ParaxialApproximationErrorUIAxes, 'Error [%]')
            app.ParaxialApproximationErrorUIAxes.LabelFontSizeMultiplier = 1;
            app.ParaxialApproximationErrorUIAxes.PlotBoxAspectRatio = [1.40060240963855 1 1];
            app.ParaxialApproximationErrorUIAxes.XMinorTick = 'on';
            app.ParaxialApproximationErrorUIAxes.YMinorTick = 'on';
            app.ParaxialApproximationErrorUIAxes.ZMinorTick = 'on';
            app.ParaxialApproximationErrorUIAxes.XGrid = 'on';
            app.ParaxialApproximationErrorUIAxes.YGrid = 'on';
            app.ParaxialApproximationErrorUIAxes.ZGrid = 'on';
            app.ParaxialApproximationErrorUIAxes.FontSize = 15;
            app.ParaxialApproximationErrorUIAxes.Position = [9 394 417 315];

            % Create FieldofviewGRADIENTPLANEPanel
            app.FieldofviewGRADIENTPLANEPanel = uipanel(app.SetupcharacteristicsTab);
            app.FieldofviewGRADIENTPLANEPanel.AutoResizeChildren = 'off';
            app.FieldofviewGRADIENTPLANEPanel.TitlePosition = 'centertop';
            app.FieldofviewGRADIENTPLANEPanel.Title = 'Field of view : GRADIENT PLANE';
            app.FieldofviewGRADIENTPLANEPanel.FontWeight = 'bold';
            app.FieldofviewGRADIENTPLANEPanel.FontSize = 14;
            app.FieldofviewGRADIENTPLANEPanel.Position = [9 214 237 72];

            % Create FOVsubbackgroundsubEditField_70Label
            app.FOVsubbackgroundsubEditField_70Label = uilabel(app.FieldofviewGRADIENTPLANEPanel);
            app.FOVsubbackgroundsubEditField_70Label.Interpreter = 'html';
            app.FOVsubbackgroundsubEditField_70Label.HorizontalAlignment = 'right';
            app.FOVsubbackgroundsubEditField_70Label.Position = [13 14 36 22];
            app.FOVsubbackgroundsubEditField_70Label.Text = 'FOV :';

            % Create FOVsubbackgroundsubEditField_70
            app.FOVsubbackgroundsubEditField_70 = uieditfield(app.FieldofviewGRADIENTPLANEPanel, 'numeric');
            app.FOVsubbackgroundsubEditField_70.Editable = 'off';
            app.FOVsubbackgroundsubEditField_70.Position = [57 14 45 22];

            % Create FOVsubbackgroundsubEditField_70_2
            app.FOVsubbackgroundsubEditField_70_2 = uieditfield(app.FieldofviewGRADIENTPLANEPanel, 'numeric');
            app.FOVsubbackgroundsubEditField_70_2.Editable = 'off';
            app.FOVsubbackgroundsubEditField_70_2.Position = [152 14 45 22];

            % Create mmLabel_70_2
            app.mmLabel_70_2 = uilabel(app.FieldofviewGRADIENTPLANEPanel);
            app.mmLabel_70_2.Position = [106 14 20 22];
            app.mmLabel_70_2.Text = 'mm';

            % Create mmLabel_70
            app.mmLabel_70 = uilabel(app.FieldofviewGRADIENTPLANEPanel);
            app.mmLabel_70.Position = [201 14 20 22];
            app.mmLabel_70.Text = 'mm';

            % Create xLabel_70
            app.xLabel_70 = uilabel(app.FieldofviewGRADIENTPLANEPanel);
            app.xLabel_70.FontWeight = 'bold';
            app.xLabel_70.Position = [136 14 10 22];
            app.xLabel_70.Text = 'x';

            % Create MeasurementResolutionPanel
            app.MeasurementResolutionPanel = uipanel(app.SetupcharacteristicsTab);
            app.MeasurementResolutionPanel.AutoResizeChildren = 'off';
            app.MeasurementResolutionPanel.TitlePosition = 'centertop';
            app.MeasurementResolutionPanel.Title = 'Measurement Resolution';
            app.MeasurementResolutionPanel.FontWeight = 'bold';
            app.MeasurementResolutionPanel.FontSize = 15;
            app.MeasurementResolutionPanel.Position = [9 318 337 60];

            % Create rsubtsubEditField_61Label
            app.rsubtsubEditField_61Label = uilabel(app.MeasurementResolutionPanel);
            app.rsubtsubEditField_61Label.Interpreter = 'html';
            app.rsubtsubEditField_61Label.HorizontalAlignment = 'right';
            app.rsubtsubEditField_61Label.Position = [29 7 25 22];
            app.rsubtsubEditField_61Label.Text = 'r<sub>t</sub> :';

            % Create rsubtsubEditField_61
            app.rsubtsubEditField_61 = uieditfield(app.MeasurementResolutionPanel, 'numeric');
            app.rsubtsubEditField_61.Editable = 'off';
            app.rsubtsubEditField_61.Position = [60 7 65 22];

            % Create mmEditField_61
            app.mmEditField_61 = uilabel(app.MeasurementResolutionPanel);
            app.mmEditField_61.Interpreter = 'html';
            app.mmEditField_61.Position = [128 7 20 22];
            app.mmEditField_61.Text = 'mm';

            % Create rsubIPsubEditField_60Label
            app.rsubIPsubEditField_60Label = uilabel(app.MeasurementResolutionPanel);
            app.rsubIPsubEditField_60Label.Interpreter = 'html';
            app.rsubIPsubEditField_60Label.HorizontalAlignment = 'right';
            app.rsubIPsubEditField_60Label.Position = [187 7 25 22];
            app.rsubIPsubEditField_60Label.Text = 'r<sub>IP</sub> :';

            % Create rsubIPsubEditField_60
            app.rsubIPsubEditField_60 = uieditfield(app.MeasurementResolutionPanel, 'numeric');
            app.rsubIPsubEditField_60.Editable = 'off';
            app.rsubIPsubEditField_60.Position = [218 7 65 22];

            % Create mmEditField_60
            app.mmEditField_60 = uilabel(app.MeasurementResolutionPanel);
            app.mmEditField_60.Interpreter = 'html';
            app.mmEditField_60.Position = [286 7 20 22];
            app.mmEditField_60.Text = 'mm';

            % Create SetupPanel
            app.SetupPanel = uipanel(app.SetupcharacteristicsTab);
            app.SetupPanel.AutoResizeChildren = 'off';
            app.SetupPanel.TitlePosition = 'centertop';
            app.SetupPanel.Title = 'Setup';
            app.SetupPanel.FontWeight = 'bold';
            app.SetupPanel.FontSize = 15;
            app.SetupPanel.Position = [435 405 270 197];

            % Create ZsubgradsubEditFieldLabel_50
            app.ZsubgradsubEditFieldLabel_50 = uilabel(app.SetupPanel);
            app.ZsubgradsubEditFieldLabel_50.Interpreter = 'html';
            app.ZsubgradsubEditFieldLabel_50.HorizontalAlignment = 'right';
            app.ZsubgradsubEditFieldLabel_50.Position = [105 143 39 22];
            app.ZsubgradsubEditFieldLabel_50.Text = 'Z<sub>grad</sub> :';

            % Create ZsubgradsubEditField_50
            app.ZsubgradsubEditField_50 = uieditfield(app.SetupPanel, 'numeric');
            app.ZsubgradsubEditField_50.Editable = 'off';
            app.ZsubgradsubEditField_50.Position = [154 143 65 22];

            % Create mmEditField_51
            app.mmEditField_51 = uilabel(app.SetupPanel);
            app.mmEditField_51.Interpreter = 'html';
            app.mmEditField_51.Position = [225 143 20 22];
            app.mmEditField_51.Text = 'mm';

            % Create ZsublenssubEditField_50Label
            app.ZsublenssubEditField_50Label = uilabel(app.SetupPanel);
            app.ZsublenssubEditField_50Label.Interpreter = 'html';
            app.ZsublenssubEditField_50Label.HorizontalAlignment = 'right';
            app.ZsublenssubEditField_50Label.Position = [107 109 37 22];
            app.ZsublenssubEditField_50Label.Text = 'Z<sub>lens</sub> :';

            % Create ZsublenssubEditField_50
            app.ZsublenssubEditField_50 = uieditfield(app.SetupPanel, 'numeric');
            app.ZsublenssubEditField_50.Editable = 'off';
            app.ZsublenssubEditField_50.Position = [154 109 65 22];

            % Create mmEditField_50
            app.mmEditField_50 = uilabel(app.SetupPanel);
            app.mmEditField_50.Interpreter = 'html';
            app.mmEditField_50.Position = [225 109 20 22];
            app.mmEditField_50.Text = 'mm';

            % Create ZsubgradsubEditFieldLabel_3
            app.ZsubgradsubEditFieldLabel_3 = uilabel(app.SetupPanel);
            app.ZsubgradsubEditFieldLabel_3.Interpreter = 'html';
            app.ZsubgradsubEditFieldLabel_3.HorizontalAlignment = 'right';
            app.ZsubgradsubEditFieldLabel_3.Position = [119 75 25 22];
            app.ZsubgradsubEditFieldLabel_3.Text = 'M :';

            % Create MEditField_50
            app.MEditField_50 = uieditfield(app.SetupPanel, 'numeric');
            app.MEditField_50.Editable = 'off';
            app.MEditField_50.Position = [154 75 65 22];

            % Create pixelprojEditField_50Label
            app.pixelprojEditField_50Label = uilabel(app.SetupPanel);
            app.pixelprojEditField_50Label.Interpreter = 'html';
            app.pixelprojEditField_50Label.HorizontalAlignment = 'right';
            app.pixelprojEditField_50Label.Position = [26 41 118 22];
            app.pixelprojEditField_50Label.Text = 'Pixel projection size :';

            % Create pixelprojEditField_50
            app.pixelprojEditField_50 = uieditfield(app.SetupPanel, 'numeric');
            app.pixelprojEditField_50.Editable = 'off';
            app.pixelprojEditField_50.Position = [154 41 65 22];

            % Create dpiLabel_50
            app.dpiLabel_50 = uilabel(app.SetupPanel);
            app.dpiLabel_50.Interpreter = 'html';
            app.dpiLabel_50.Position = [225 41 20 22];
            app.dpiLabel_50.Text = 'dpi';

            % Create epsilonsubparaxialapproxmaxsubEditFieldLabel
            app.epsilonsubparaxialapproxmaxsubEditFieldLabel = uilabel(app.SetupPanel);
            app.epsilonsubparaxialapproxmaxsubEditFieldLabel.Interpreter = 'html';
            app.epsilonsubparaxialapproxmaxsubEditFieldLabel.HorizontalAlignment = 'right';
            app.epsilonsubparaxialapproxmaxsubEditFieldLabel.Position = [35 7 109 22];
            app.epsilonsubparaxialapproxmaxsubEditFieldLabel.Text = {'&epsilon;<sub>parax. approx. - max</sub> :'; ''};

            % Create epsilonsubparaxialapproxmaxsubEditField_50
            app.epsilonsubparaxialapproxmaxsubEditField_50 = uieditfield(app.SetupPanel, 'numeric');
            app.epsilonsubparaxialapproxmaxsubEditField_50.Editable = 'off';
            app.epsilonsubparaxialapproxmaxsubEditField_50.Position = [154 7 65 22];

            % Create percLabel_50
            app.percLabel_50 = uilabel(app.SetupPanel);
            app.percLabel_50.Interpreter = 'html';
            app.percLabel_50.Position = [225 7 25 22];
            app.percLabel_50.Text = '%';

            % Create MeasurementSensitivityPanel
            app.MeasurementSensitivityPanel = uipanel(app.SetupcharacteristicsTab);
            app.MeasurementSensitivityPanel.AutoResizeChildren = 'off';
            app.MeasurementSensitivityPanel.TitlePosition = 'centertop';
            app.MeasurementSensitivityPanel.Title = 'Measurement Sensitivity';
            app.MeasurementSensitivityPanel.FontWeight = 'bold';
            app.MeasurementSensitivityPanel.FontSize = 15;
            app.MeasurementSensitivityPanel.Position = [368 318 337 60];

            % Create IWEditField_41Label
            app.IWEditField_41Label = uilabel(app.MeasurementSensitivityPanel);
            app.IWEditField_41Label.Interpreter = 'html';
            app.IWEditField_41Label.HorizontalAlignment = 'right';
            app.IWEditField_41Label.Position = [189 7 27 22];
            app.IWEditField_41Label.Text = 'IW :';

            % Create IWEditField_41
            app.IWEditField_41 = uieditfield(app.MeasurementSensitivityPanel, 'numeric');
            app.IWEditField_41.Editable = 'off';
            app.IWEditField_41.Position = [222 7 65 22];

            % Create pxLabel_41
            app.pxLabel_41 = uilabel(app.MeasurementSensitivityPanel);
            app.pxLabel_41.Interpreter = 'html';
            app.pxLabel_41.Position = [290 7 20 22];
            app.pxLabel_41.Text = 'px';

            % Create DeltaXEditField_40Label
            app.DeltaXEditField_40Label = uilabel(app.MeasurementSensitivityPanel);
            app.DeltaXEditField_40Label.Interpreter = 'html';
            app.DeltaXEditField_40Label.HorizontalAlignment = 'right';
            app.DeltaXEditField_40Label.Position = [34 7 27 22];
            app.DeltaXEditField_40Label.Text = '&Delta;X :';

            % Create DeltaXEditField_40
            app.DeltaXEditField_40 = uieditfield(app.MeasurementSensitivityPanel, 'numeric');
            app.DeltaXEditField_40.Editable = 'off';
            app.DeltaXEditField_40.Position = [67 7 65 22];

            % Create pxLabel_40
            app.pxLabel_40 = uilabel(app.MeasurementSensitivityPanel);
            app.pxLabel_40.Interpreter = 'html';
            app.pxLabel_40.Position = [135 7 20 22];
            app.pxLabel_40.Text = 'px';

            % Create FieldofviewBACKGROUNDPanel
            app.FieldofviewBACKGROUNDPanel = uipanel(app.SetupcharacteristicsTab);
            app.FieldofviewBACKGROUNDPanel.AutoResizeChildren = 'off';
            app.FieldofviewBACKGROUNDPanel.TitlePosition = 'centertop';
            app.FieldofviewBACKGROUNDPanel.Title = 'Field of view : BACKGROUND';
            app.FieldofviewBACKGROUNDPanel.FontWeight = 'bold';
            app.FieldofviewBACKGROUNDPanel.FontSize = 14;
            app.FieldofviewBACKGROUNDPanel.Position = [9 134 237 72];

            % Create FOVsubeffsubEditField_71Label
            app.FOVsubeffsubEditField_71Label = uilabel(app.FieldofviewBACKGROUNDPanel);
            app.FOVsubeffsubEditField_71Label.Interpreter = 'html';
            app.FOVsubeffsubEditField_71Label.HorizontalAlignment = 'right';
            app.FOVsubeffsubEditField_71Label.Position = [14 16 36 22];
            app.FOVsubeffsubEditField_71Label.Text = 'FOV :';

            % Create FOVsubeffsubEditField_71
            app.FOVsubeffsubEditField_71 = uieditfield(app.FieldofviewBACKGROUNDPanel, 'numeric');
            app.FOVsubeffsubEditField_71.Editable = 'off';
            app.FOVsubeffsubEditField_71.Position = [58 16 45 22];

            % Create FOVsubeffsubEditField_71_2
            app.FOVsubeffsubEditField_71_2 = uieditfield(app.FieldofviewBACKGROUNDPanel, 'numeric');
            app.FOVsubeffsubEditField_71_2.Editable = 'off';
            app.FOVsubeffsubEditField_71_2.Position = [153 16 45 22];

            % Create mmLabel_71_2
            app.mmLabel_71_2 = uilabel(app.FieldofviewBACKGROUNDPanel);
            app.mmLabel_71_2.Position = [107 16 20 22];
            app.mmLabel_71_2.Text = 'mm';

            % Create mmLabel_71
            app.mmLabel_71 = uilabel(app.FieldofviewBACKGROUNDPanel);
            app.mmLabel_71.Position = [202 16 20 22];
            app.mmLabel_71.Text = 'mm';

            % Create xLabel_71
            app.xLabel_71 = uilabel(app.FieldofviewBACKGROUNDPanel);
            app.xLabel_71.FontWeight = 'bold';
            app.xLabel_71.Position = [137 16 10 22];
            app.xLabel_71.Text = 'x';

            % Create FOVplotfeaturesPanel
            app.FOVplotfeaturesPanel = uipanel(app.SetupcharacteristicsTab);
            app.FOVplotfeaturesPanel.AutoResizeChildren = 'off';
            app.FOVplotfeaturesPanel.TitlePosition = 'centertop';
            app.FOVplotfeaturesPanel.Title = 'FOV plot features';
            app.FOVplotfeaturesPanel.BackgroundColor = [0.8706 0.8706 0.8706];
            app.FOVplotfeaturesPanel.FontAngle = 'italic';
            app.FOVplotfeaturesPanel.FontWeight = 'bold';
            app.FOVplotfeaturesPanel.FontSize = 15;
            app.FOVplotfeaturesPanel.Position = [28 39 210 81];

            % Create LegendSwitchLabel
            app.LegendSwitchLabel = uilabel(app.FOVplotfeaturesPanel);
            app.LegendSwitchLabel.HorizontalAlignment = 'center';
            app.LegendSwitchLabel.FontWeight = 'bold';
            app.LegendSwitchLabel.FontAngle = 'italic';
            app.LegendSwitchLabel.Position = [24 30 55 22];
            app.LegendSwitchLabel.Text = 'Legend :';

            % Create LegendSwitch
            app.LegendSwitch = uiswitch(app.FOVplotfeaturesPanel, 'slider');
            app.LegendSwitch.ValueChangedFcn = createCallbackFcn(app, @LegendSwitchValueChanged, true);
            app.LegendSwitch.FontWeight = 'bold';
            app.LegendSwitch.FontAngle = 'italic';
            app.LegendSwitch.Position = [109 31 45 20];
            app.LegendSwitch.Value = 'On';

            % Create TextSwitchLabel
            app.TextSwitchLabel = uilabel(app.FOVplotfeaturesPanel);
            app.TextSwitchLabel.HorizontalAlignment = 'center';
            app.TextSwitchLabel.FontWeight = 'bold';
            app.TextSwitchLabel.FontAngle = 'italic';
            app.TextSwitchLabel.Position = [32 6 37 22];
            app.TextSwitchLabel.Text = 'Text :';

            % Create TextSwitch
            app.TextSwitch = uiswitch(app.FOVplotfeaturesPanel, 'slider');
            app.TextSwitch.ValueChangedFcn = createCallbackFcn(app, @TextSwitchValueChanged, true);
            app.TextSwitch.FontWeight = 'bold';
            app.TextSwitch.FontAngle = 'italic';
            app.TextSwitch.Position = [107 7 45 20];
            app.TextSwitch.Value = 'On';

            % Create ErrorplotfeaturesPanel
            app.ErrorplotfeaturesPanel = uipanel(app.SetupcharacteristicsTab);
            app.ErrorplotfeaturesPanel.TitlePosition = 'centertop';
            app.ErrorplotfeaturesPanel.Title = 'Error plot features';
            app.ErrorplotfeaturesPanel.BackgroundColor = [0.8706 0.8706 0.8706];
            app.ErrorplotfeaturesPanel.FontAngle = 'italic';
            app.ErrorplotfeaturesPanel.FontWeight = 'bold';
            app.ErrorplotfeaturesPanel.FontSize = 15;
            app.ErrorplotfeaturesPanel.Position = [465 622 211 66];

            % Create EditFieldPortrait_14
            app.EditFieldPortrait_14 = uilabel(app.ErrorplotfeaturesPanel);
            app.EditFieldPortrait_14.BackgroundColor = [0.2706 0.9216 0.3294];
            app.EditFieldPortrait_14.Position = [98 9 67 24];
            app.EditFieldPortrait_14.Text = '';

            % Create epsilonthresholdEditFieldLabel
            app.epsilonthresholdEditFieldLabel = uilabel(app.ErrorplotfeaturesPanel);
            app.epsilonthresholdEditFieldLabel.Interpreter = 'html';
            app.epsilonthresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.epsilonthresholdEditFieldLabel.Position = [19 10 70 22];
            app.epsilonthresholdEditFieldLabel.Text = {'&epsilon; threshold :'; ''};

            % Create epsilonthresholdEditField
            app.epsilonthresholdEditField = uieditfield(app.ErrorplotfeaturesPanel, 'numeric');
            app.epsilonthresholdEditField.Position = [99 10 65 22];
            app.epsilonthresholdEditField.Value = 1;

            % Create percLabel_51
            app.percLabel_51 = uilabel(app.ErrorplotfeaturesPanel);
            app.percLabel_51.Interpreter = 'html';
            app.percLabel_51.Position = [169 10 25 22];
            app.percLabel_51.Text = '%';

            % Create LogoApp
            app.LogoApp = uiimage(app.UIFigure);
            app.LogoApp.Position = [218 12 197 130];
            app.LogoApp.ImageSource = 'BOS Setup Generator LOGO.png';

            % Create SavesetupButton
            app.SavesetupButton = uibutton(app.UIFigure, 'push');
            app.SavesetupButton.ButtonPushedFcn = createCallbackFcn(app, @SavesetupButtonPushed, true);
            app.SavesetupButton.BackgroundColor = [0.8706 0.8706 0.8706];
            app.SavesetupButton.FontSize = 15;
            app.SavesetupButton.FontWeight = 'bold';
            app.SavesetupButton.Enable = 'off';
            app.SavesetupButton.Position = [31 161 106 26];
            app.SavesetupButton.Text = 'Save setup';

            % Create LoadsetupButton
            app.LoadsetupButton = uibutton(app.UIFigure, 'push');
            app.LoadsetupButton.ButtonPushedFcn = createCallbackFcn(app, @LoadsetupButtonPushed, true);
            app.LoadsetupButton.BackgroundColor = [0.8706 0.8706 0.8706];
            app.LoadsetupButton.FontSize = 15;
            app.LoadsetupButton.FontWeight = 'bold';
            app.LoadsetupButton.Position = [171 161 105 26];
            app.LoadsetupButton.Text = 'Load setup';

            % Create ComputeButton
            app.ComputeButton = uibutton(app.UIFigure, 'push');
            app.ComputeButton.ButtonPushedFcn = createCallbackFcn(app, @ComputeButtonPushed, true);
            app.ComputeButton.BackgroundColor = [0.8706 0.8706 0.8706];
            app.ComputeButton.FontSize = 15;
            app.ComputeButton.FontWeight = 'bold';
            app.ComputeButton.Position = [310 161 105 26];
            app.ComputeButton.Text = 'Compute';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = BOS_Setup_Generator

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end

