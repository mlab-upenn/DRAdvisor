function varargout = Inputs(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Inputs_OpeningFcn, ...
                   'gui_OutputFcn',  @Inputs_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before Inputs is made visible.
function Inputs_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
set(0,'units','characters')

scrsz=get(0,'screensize')
scrsz(1:2)=scrsz(3:4);

% General window

    set(handles.window,'Position',[135.8 1.54 239.8 53].*scrsz./[273.2000 59.0769 273.2000 59.0769]); 
    % To adapt sizes of the elements in the window to the new window size
    original_mainw_size = [135.8 1.54 239.8 53];
    new_mainw_size = [135.8 1.54 239.8 53].*scrsz./[273.2000 59.0769 273.2000 59.0769];
    
% Tabs position

    set(handles.inputs_tab,'Position',[7     51.154 35 1.692].*new_mainw_size./original_mainw_size);
    set(handles.mi_tab,    'Position',[45.2  51.154 35 1.692].*new_mainw_size./original_mainw_size);
    set(handles.drb_tab,   'Position',[83.4  51.154 35 1.692].*new_mainw_size./original_mainw_size);
    set(handles.dre_tab,   'Position',[121.6 51.154 35 1.692].*new_mainw_size./original_mainw_size);
    set(handles.drs_tab,   'Position',[159.8 51.154 35 1.692].*new_mainw_size./original_mainw_size);
    set(handles.report_tab,'Position',[198.6 51.154 35 1.692].*new_mainw_size./original_mainw_size);

% Console position

    set(handles.console_panel,'Position',[7   0.62 226.6 9.92].*new_mainw_size./original_mainw_size);
    % To adapt sizes of the elements in the console panel to the new console panel size
    original_console_size = [7   0.62 226.6 9.92];
    new_console_size = [7   0.62 226.6 9.92].*new_mainw_size./original_mainw_size;
    
    set(handles.console,      'Position',[2.6 1    220.2 7.54].*new_console_size./original_console_size);

% Inputs position

    set(handles.training,'Position',[7 42.5 30.2 3.923].*new_mainw_size./original_mainw_size);
        set(handles.training_sd,  'Position',[7    40.3  14   1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_sdm, 'Position',[16.2 38.69 5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_sdd, 'Position',[22.8 38.69 5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_sdy, 'Position',[29.2 38.69 8    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_sdb1,'Position',[21.4 38.54 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_sdb2,'Position',[28   38.54 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_ed,  'Position',[7    36.92 14   1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_edm, 'Position',[16.2 35.3  5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_edd, 'Position',[22.8 35.3  5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_edy, 'Position',[29.2 35.3  8    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_edb1,'Position',[21.4 35.15 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_edb2,'Position',[28   35.15 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_st,  'Position',[7    33.3  18.2 1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_stn, 'Position',[23.6 31.69 6.4  1.62].*new_mainw_size./original_mainw_size);
        set(handles.training_stm, 'Position',[31.6 31.54 5.6  1.62].*new_mainw_size./original_mainw_size);
    set(handles.testing, 'Position',[7 26.3 30.2 3.923].*new_mainw_size./original_mainw_size);
        set(handles.testing_sd,  'Position',[7    23.85  14   1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_sdm, 'Position',[16.2 22.23 5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_sdd, 'Position',[22.8 22.23 5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_sdy, 'Position',[29.2 22.23 8    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_sdb1,'Position',[21.4 22.07 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_sdb2,'Position',[28   22.07 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_ed,  'Position',[7    20.46 14   1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_edm, 'Position',[16.2 18.85  5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_edd, 'Position',[22.8 18.85  5.2  1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_edy, 'Position',[29.2 18.85  8    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_edb1,'Position',[21.4 18.69 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_edb2,'Position',[28   18.69 1    1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_st,  'Position',[7    16.85  18.2 1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_stn, 'Position',[23.6 15.23 6.4  1.62].*new_mainw_size./original_mainw_size);
        set(handles.testing_stm, 'Position',[31.6 15.08 5.6  1.62].*new_mainw_size./original_mainw_size);

    % Training_inputs position
    
        % Panels position
        
        set(handles.ti_panel,       'Position',[39.8 11.3   193.8 37.77].*new_mainw_size./original_mainw_size);
        % To adapt sizes of the elements in the training inputs panel to the new training inputs panel size
        original_ti_panel_size = [39.8 11.3   193.8 37.77];
        new_ti_panel_size = [39.8 11.3   193.8 37.77].*new_mainw_size./original_mainw_size;
        
        set(handles.inputs_ld_panel,'Position',[4.4  4.696  40.2  30.154].*new_ti_panel_size./original_ti_panel_size);
        % To adapt sizes of the elements in the load data panel to the new load data panel size
        original_inputs_ld_panel_size = [4.4  4.696  40.2  30.154];
        new_inputs_ld_panel_size = [4.4  4.696  40.2  30.154].*new_ti_panel_size./original_ti_panel_size;
        
        set(handles.inputs_pd_panel,'Position',[51.6 4.696  60.2  30.154].*new_ti_panel_size./original_ti_panel_size);
        % To adapt sizes of the elements in the plot data panel to the new plot data panel size
        original_inputs_pd_panel_size = [51.6 4.696  60.2  30.154];
        new_inputs_pd_panel_size = [51.6 4.696  60.2  30.154].*new_ti_panel_size./original_ti_panel_size;
        
        % Plots position
        
        set(handles.wd_plot,'Position',[118.8 25.696 70.2 10].*new_ti_panel_size./original_ti_panel_size);
        set(handles.sd_plot,'Position',[118.8 13.619 70.2 10].*new_ti_panel_size./original_ti_panel_size);
        set(handles.bd_plot,'Position',[118.8 1.85   70.2 10].*new_ti_panel_size./original_ti_panel_size);
        
        % Load data panel
        
        set(handles.wd,'Position',[5.4 22.846 30.2 3.923].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
            set(handles.training_wds,   'Position',[5.4  20.7 22.6 1.62].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
            set(handles.training_wdbox, 'Position',[11.2 19   14   1.62].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
            set(handles.training_wdload,'Position',[25.6 19   10   1.7].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
        set(handles.sd,'Position',[5.4 12     30.2 3.923].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
        set(handles.bd,'Position',[5.4 1.154  30.2 3.923].*new_inputs_ld_panel_size./original_inputs_ld_panel_size);
        
        % Plot data panel
        
        set(handles.wd_menu,'Position',[6.6 24     30 1.615].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        set(handles.sd_menu,'Position',[6.6 13.154 30 1.615].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        set(handles.bd_menu,'Position',[6.6 2.308  30 1.615].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        set(handles.view_wd,'Position',[39.8 23.923 15 1.692].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        set(handles.view_sd,'Position',[39.8 13.077 15 1.692].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        set(handles.view_bd,'Position',[39.8 2.231  15 1.692].*new_inputs_pd_panel_size./original_inputs_pd_panel_size);
        
        % Rest
        
        set(handles.create_structure,'Position',[5.4 1.081 105.2 2.692].*new_ti_panel_size./original_ti_panel_size);
    
    % Testing_inputs position

            % Panels position

            set(handles.ti_panel_test,       'Position',[39.8 11.3   193.8 37.77].*new_mainw_size./original_mainw_size);
            % To adapt sizes of the elements in the testing inputs panel to the new testing inputs panel size
            original_ti_panel_test_size = [39.8 11.3   193.8 37.77];
            new_ti_panel_test_size = [39.8 11.3   193.8 37.77].*new_mainw_size./original_mainw_size;

            set(handles.inputs_ld_panel_test,'Position',[4.4  4.696  40.2  30.154].*new_ti_panel_test_size./original_ti_panel_test_size);
            % To adapt sizes of the elements in the load data panel to the new load data panel size
            original_inputs_ld_panel_test_size = [4.4  4.696  40.2  30.154];
            new_inputs_ld_panel_test_size = [4.4  4.696  40.2  30.154].*new_ti_panel_test_size./original_ti_panel_test_size;
        
            set(handles.inputs_pd_panel_test,'Position',[51.6 4.696  60.2  30.154].*new_ti_panel_test_size./original_ti_panel_test_size);
            % To adapt sizes of the elements in the plot data panel to the new plot data panel size
            original_inputs_pd_panel_test_size = [51.6 4.696  60.2  30.154];
            new_inputs_pd_panel_test_size = [51.6 4.696  60.2  30.154].*new_ti_panel_test_size./original_ti_panel_test_size;

            % Plots position

            set(handles.wd_plot_test,'Position',[118.8 25.696 70.2 10].*new_ti_panel_test_size./original_ti_panel_test_size);
            set(handles.sd_plot_test,'Position',[118.8 13.619 70.2 10].*new_ti_panel_test_size./original_ti_panel_test_size);
            set(handles.bd_plot_test,'Position',[118.8 1.85   70.2 10].*new_ti_panel_test_size./original_ti_panel_test_size);

            % Load data panel

            set(handles.wd_test,'Position',[5.4 22.846 30.2 3.923].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);
                set(handles.testing_wds,   'Position',[5.4  20.7 22.6 1.62].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);
                set(handles.testing_wdbox, 'Position',[11.2 19   14   1.62].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);
                set(handles.testing_wdload,'Position',[25.6 19   10   1.7].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);
            set(handles.sd_test,'Position',[5.4 12     30.2 3.923].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);
            set(handles.bd_test,'Position',[5.4 1.154  30.2 3.923].*new_inputs_ld_panel_test_size./original_inputs_ld_panel_test_size);

            % Plot data panel

            set(handles.wd_menu_test,'Position',[6.6 24     30 1.615].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);
            set(handles.sd_menu_test,'Position',[6.6 13.154 30 1.615].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);
            set(handles.bd_menu_test,'Position',[6.6 2.308  30 1.615].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);
            set(handles.view_wd_test,'Position',[39.8 23.923 15 1.692].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);
            set(handles.view_sd_test,'Position',[39.8 13.077 15 1.692].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);
            set(handles.view_bd_test,'Position',[39.8 2.231  15 1.692].*new_inputs_pd_panel_test_size./original_inputs_pd_panel_test_size);

            % Rest

            set(handles.create_structure_test,'Position',[5.4 1.081 105.2 2.692].*new_ti_panel_test_size./original_ti_panel_test_size);


% Model_identification position

    % Panels position

    set(handles.imp_panel, 'Position',[7     11.31  108.2 37.77].*new_mainw_size./original_mainw_size);
    % To adapt sizes of the elements in the identification panel to the new identification panel size
    original_imp_panel_size = [7     11.31  108.2 37.77];
    new_imp_panel_size = [7     11.31  108.2 37.77].*new_mainw_size./original_mainw_size;

    set(handles.lm_panel,  'Position',[4.4   3.92   42.2  32   ].*new_imp_panel_size./original_imp_panel_size);
    % To adapt sizes of the elements in the Learning Methods panel to the new Learning Methods panel size
    original_lm_panel_size = [4.4   3.92   42.2  32   ];
    new_lm_panel_size = [4.4   3.92   42.2  32   ].*new_imp_panel_size./original_imp_panel_size;
    
    set(handles.res_panel, 'Position',[52.6  3.92   22.6  32   ].*new_imp_panel_size./original_imp_panel_size);
    % To adapt sizes of the elements in the Training error panel to the new Training error panel size
    original_res_panel_size = [52.6  3.92   22.6  32   ];
    new_res_panel_size = [52.6  3.92   22.6  32   ].*new_imp_panel_size./original_imp_panel_size;
    
    set(handles.test_panel,'Position',[81.2  3.92   22.6  32   ].*new_imp_panel_size./original_imp_panel_size);
    % To adapt sizes of the elements in the Testing error panel to the new Testing error panel size
    original_test_panel_size = [81.2  3.92   22.6  32   ];
    new_test_panel_size = [81.2  3.92   22.6  32   ].*new_imp_panel_size./original_imp_panel_size;
    
    set(handles.ep_panel,  'Position',[119.8 11.308 113.8 37.77].*new_mainw_size./original_mainw_size);
    % To adapt sizes of the elements in the error plots panel to the new error plots panel size
    original_ep_panel_size = [119.8 11.308 113.8 37.77];
    new_ep_panel_size = [119.8 11.308 113.8 37.77].*new_mainw_size./original_mainw_size;

    % Plots position

    set(handles.mi_plot,'Position',[5.8 1.77 104.2 25.39].*new_ep_panel_size./original_ep_panel_size);

    % Buttons position

    set(handles.train,          'Position',[4.4  1.15   45   1.85].*new_imp_panel_size./original_imp_panel_size);
    set(handles.stop,           'Position',[58.8 1.15   45   1.85].*new_imp_panel_size./original_imp_panel_size);
    set(handles.def_value,      'Position',[8    1      25   1.85].*new_lm_panel_size./original_lm_panel_size);
    set(handles.err_plot_button,'Position',[39.8 27.923 37.4 1.692].*new_ep_panel_size./original_ep_panel_size);

    % Learning method panel

        % Checkboxes
        set(handles.srt,'Position',[1.4 28.36  35.8 1.77].*new_lm_panel_size./original_lm_panel_size);
        set(handles.cvt,'Position',[1.4 23.692 35.8 1.77].*new_lm_panel_size./original_lm_panel_size);
        set(handles.brt,'Position',[1.4 17     35.8 1.77].*new_lm_panel_size./original_lm_panel_size);
        set(handles.rf, 'Position',[1.4 10.31  35.8 1.77].*new_lm_panel_size./original_lm_panel_size);
        set(handles.mbt,'Position',[1.4 3.62   35.8 1.77].*new_lm_panel_size./original_lm_panel_size);

        % Boxes
        set(handles.srt_ml_box,'Position',[5.2 26.385 10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.cvt_ml_box,'Position',[5.2 21.692 10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.cvt_k_box, 'Position',[5.2 19.692 10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.brt_ml_box,'Position',[5.2 15     10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.brt_nt_box,'Position',[5.2 13     10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.rf_ml_box, 'Position',[5.2 8.308  10.2 1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.rf_nt_box, 'Position',[5.2 6.308  10.2 1.385].*new_lm_panel_size./original_lm_panel_size);

        % Rest
        set(handles.srt_ml,  'Position',[17.2 26.385 21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.cvt_ml,  'Position',[17.2 21.692 21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.cvt_k,   'Position',[17.2 19.692 21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.brt_ml,  'Position',[17.2 15     21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.brt_nt,  'Position',[17.2 13     21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.rf_ml,   'Position',[17.2 8.308  21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.rf_nt,   'Position',[17.2 6.308  21  1.385].*new_lm_panel_size./original_lm_panel_size);
        set(handles.lm_info, 'Position',[38.4 29.6   2.6 1.154].*new_lm_panel_size./original_lm_panel_size);

    % Resubstitution panel

        % Boxes
        set(handles.srt_e,'Position',[3 28.385 10.4 1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.cvt_e,'Position',[3 23.692 10.4 1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.brt_e,'Position',[3 17     10.4 1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.rf_e, 'Position',[3 10.31  10.4 1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.mbt_e,'Position',[3 3.62   10.4 1.385].*new_res_panel_size./original_res_panel_size);

        % Rest
        set(handles.srt_ep,   'Position',[14.2 28.385 4   1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.cvt_ep,   'Position',[14.2 23.692 4   1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.brt_ep,   'Position',[14.2 17     4   1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.rf_ep,    'Position',[14.2 10.31  4   1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.mbt_ep,   'Position',[14.2 3.62   4   1.385].*new_res_panel_size./original_res_panel_size);
        set(handles.res_info, 'Position',[19   29.6   2.6 1.154].*new_res_panel_size./original_res_panel_size);

    % Test panel

        % Boxes
        set(handles.srt_et,'Position',[3 28.385 10.4 1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.cvt_et,'Position',[3 23.692 10.4 1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.brt_et,'Position',[3 17     10.4 1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.rf_et, 'Position',[3 10.31  10.4 1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.mbt_et,'Position',[3 3.62   10.4 1.385].*new_test_panel_size./original_test_panel_size);

        % Rest
        set(handles.srt_etp,   'Position',[14.2 28.385 4   1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.cvt_etp,   'Position',[14.2 23.692 4   1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.brt_etp,   'Position',[14.2 17     4   1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.rf_etp,    'Position',[14.2 10.31  4   1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.mbt_etp,   'Position',[14.2 3.62   4   1.385].*new_test_panel_size./original_test_panel_size);
        set(handles.test_info, 'Position',[19   29.6   2.6 1.154].*new_test_panel_size./original_test_panel_size);


    % Plot buttons

    set(handles.testing_fit,  'Position',[2.8  34 38.8 2.08].*new_ep_panel_size./original_ep_panel_size);
    set(handles.training_fit, 'Position',[2.8  31 38.8 2.08].*new_ep_panel_size./original_ep_panel_size);
    set(handles.brt_rmse,     'Position',[44.6 34 28.2 2.08].*new_ep_panel_size./original_ep_panel_size);
    set(handles.rf_rmse,      'Position',[44.6 31 31.6 2.08].*new_ep_panel_size./original_ep_panel_size);
    set(handles.brt_fi,      'Position',[78.2 34 30.8 2.08].*new_ep_panel_size./original_ep_panel_size);
    set(handles.rf_fi,       'Position',[78.2 31 34.2 2.08].*new_ep_panel_size./original_ep_panel_size);
    
% DR Baseline Position

    % Panels position
        
    set(handles.ce_panel, 'Position',[7 11.85 226.6 11.54].*new_mainw_size./original_mainw_size);
    % To adapt sizes of the elements in the identification panel to the new identification panel size
    original_ce_panel_size = [7 11.85 226.6 11.54];
    new_ce_panel_size = [7 11.85 226.6 11.54].*new_mainw_size./original_mainw_size;
    
    set(handles.dre_panel,'Position',[7 24.77 226.6 24.31].*new_mainw_size./original_mainw_size);
    % To adapt sizes of the elements in the identification panel to the new identification panel size
    original_dre_panel_size = [7 24.77 226.6 24.31];
    new_dre_panel_size = [7 24.77 226.6 24.31].*new_mainw_size./original_mainw_size;

    % Cost and energy panel
    
    set(handles.ces,    'Position',[16.2 6.62 17.4  1.62].*new_ce_panel_size./original_ce_panel_size);
    set(handles.cec,    'Position',[41.2 6.62 2.4   1.62].*new_ce_panel_size./original_ce_panel_size);
    set(handles.ce_box, 'Position',[35 6.77   5.2   1.62].*new_ce_panel_size./original_ce_panel_size);
    set(handles.ce_load,'Position',[20.6 2.46 15    1.69].*new_ce_panel_size./original_ce_panel_size);
    set(handles.ce_plot,'Position',[84.4 1.69 136.4 7.85].*new_ce_panel_size./original_ce_panel_size);
    
    % DR event panel
    
    set(handles.dre_d,  'Position',[5.8  19.9   7   1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_dm, 'Position',[15   16.77  5.2 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_dd, 'Position',[21.6 16.77  5.2 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_dy, 'Position',[28   16.77  8   1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_db1,'Position',[19.6 16.615 2.6 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_db2,'Position',[26.8 16.615 1   1.62].*new_dre_panel_size./original_dre_panel_size);
    
    set(handles.dre_sh, 'Position',[5.8 13.62 14 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_shm,'Position',[15  10.46 21 1.62].*new_dre_panel_size./original_dre_panel_size);
    
    set(handles.dre_eh, 'Position',[5.8 7.3  14 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_ehm,'Position',[15  4.15 21 1.62].*new_dre_panel_size./original_dre_panel_size);
    
    set(handles.dre_w, 'Position',[47.4 16.77 14.8 1.62].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_ws,'Position',[47.4 10.46 30   1.62].*new_dre_panel_size./original_dre_panel_size);
    
    set(handles.dre_predict,'Position',[47.4 4.15 27.8  1.69].*new_dre_panel_size./original_dre_panel_size);
    set(handles.dre_plot,   'Position',[84.4 2.08 136.4 20.38].*new_dre_panel_size./original_dre_panel_size);
 
% DR Evaluation position

    set(handles.drev_sn,       'Position',[7     47.3   18.2  1.385].*new_mainw_size./original_mainw_size);
    set(handles.drev_sn_box,   'Position',[29    47.153 24.2  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_des,      'Position',[57    47.308 14.4  1.385].*new_mainw_size./original_mainw_size);
    set(handles.drev_des_box,  'Position',[75.2  47.154 158.4 1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_spec,     'Position',[14.2  43.69  35    1.385].*new_mainw_size./original_mainw_size);
    set(handles.drev_spec_box, 'Position',[7     34.77  49.4  8    ].*new_mainw_size./original_mainw_size);
    set(handles.drev_show_sp,  'Position',[7     32.077 24    1.77 ].*new_mainw_size./original_mainw_size);
    set(handles.drev_save_str, 'Position',[32.4  32.077 24    1.77 ].*new_mainw_size./original_mainw_size);
    set(handles.drev_str,      'Position',[26    29.77  12.2  1.385].*new_mainw_size./original_mainw_size);
    set(handles.drev_str_box,  'Position',[7     14.385 50.2  14.46].*new_mainw_size./original_mainw_size);
    set(handles.drev_show_str, 'Position',[7     11.769 24    1.77 ].*new_mainw_size./original_mainw_size);
    set(handles.drev_del_str,  'Position',[33.2  11.769 24    1.77 ].*new_mainw_size./original_mainw_size);
    set(handles.drev_sh,       'Position',[64.2  43.46  14    1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_sh_hh,    'Position',[79.2  43.69  10.6  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_sh_dots,  'Position',[90.8  43.46  1.6   1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_sh_mm,    'Position',[93.4  43.69  10.6  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_eh,       'Position',[113.4 43.46  14    1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_eh_hh,    'Position',[128.4 43.69  10.6  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_eh_dots,  'Position',[140   43.46  1.6   1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_eh_mm,    'Position',[142.6 43.69  10.6  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_val,      'Position',[162.8 43.69  8     1.385].*new_mainw_size./original_mainw_size);
    set(handles.drev_val_box,  'Position',[172.8 43.615 24.2  1.615].*new_mainw_size./original_mainw_size);
    set(handles.drev_enter,    'Position',[205.8 43.46  27.8  1.769].*new_mainw_size./original_mainw_size);
    set(handles.drev_plot,     'Position',[64    15.769 169   27   ].*new_mainw_size./original_mainw_size);
    set(handles.drev_run,      'Position',[64    11.769 169   1.769].*new_mainw_size./original_mainw_size);

  

handles.tabs=[handles.inputs_tab, handles.mi_tab, handles.drb_tab, handles.dre_tab, handles.drs_tab, handles.report_tab];
    
handles.inputs_training_tabcontent=[handles.training,...% Under the button
                    handles.training_sd, handles.training_sdm, handles.training_sdd, handles.training_sdy, handles.training_sdb1,...
                    handles.training_sdb2, handles.training_ed, handles.training_edm, handles.training_edd, handles.training_edy,...
                    handles.training_edb1, handles.training_edb2, handles.training_st, handles.training_stn, handles.training_stm,...% Inside the panel
                    handles.wd, handles.sd, handles.bd, handles.wd_menu, handles.sd_menu, handles.bd_menu, handles.wd_plot, handles.sd_plot,...
                    handles.bd_plot, handles.view_wd, handles.view_sd, handles.view_bd, handles.create_structure, handles.ti_panel,...
                    handles.inputs_ld_panel, handles.inputs_pd_panel];
                
handles.inputs_testing_tabcontent=[handles.testing,...% Under the button
                    handles.testing_sd, handles.testing_sdm, handles.testing_sdd, handles.testing_sdy, handles.testing_sdb1,...
                    handles.testing_sdb2, handles.testing_ed, handles.testing_edm, handles.testing_edd, handles.testing_edy,...
                    handles.testing_edb1, handles.testing_edb2, handles.testing_st, handles.testing_stn, handles.testing_stm,...% Inside the panel
                    handles.wd_test, handles.sd_test, handles.bd_test, handles.wd_menu_test, handles.sd_menu_test, handles.bd_menu_test,...
                    handles.wd_plot_test, handles.sd_plot_test, handles.bd_plot_test, handles.view_wd_test, handles.view_sd_test,...
                    handles.view_bd_test, handles.create_structure_test, handles.ti_panel_test, handles.inputs_ld_panel_test, handles.inputs_pd_panel_test];
                
handles.mi_tabcontent=[handles.imp_panel, handles.lm_panel, handles.res_panel, handles.test_panel, handles.ep_panel,...
                handles.mi_plot, handles.train, handles.stop, handles.def_value, handles.srt,handles.cvt,handles.brt,handles.rf, handles.mbt,...
                handles.srt_ml_box, handles.cvt_ml_box, handles.cvt_k_box, handles.brt_ml_box, handles.brt_nt_box, handles.rf_ml_box, handles.rf_nt_box,...
                handles.srt_ml, handles.cvt_ml, handles.cvt_k, handles.brt_ml, handles.brt_nt, handles.rf_ml, handles.rf_nt,handles.lm_info,...
                handles.srt_e, handles.cvt_e, handles.brt_e, handles.rf_e, handles.mbt_e, handles.srt_ep,  handles.cvt_ep,  handles.brt_ep,...
                handles.rf_ep,  handles.mbt_ep, handles.res_info, handles.srt_et,handles.cvt_et,handles.brt_et,handles.rf_et, handles.mbt_et,...
                handles.srt_etp,  handles.cvt_etp,handles.brt_etp,  handles.rf_etp,  handles.mbt_etp,  handles.test_info, handles.brt_rmse,...
                handles.rf_rmse, handles.brt_fi, handles.rf_fi];
            
handles.drb_tabcontent=[handles.ces, handles.cec, handles.ce_box, handles.ce_load, handles.ce_plot, handles.ce_panel...% Costs and energy_panel
                        handles.dre_d, handles.dre_dm, handles.dre_dd, handles.dre_dy, handles.dre_db1, handles.dre_db2,...
                        handles.dre_sh, handles.dre_shm, handles.dre_eh, handles.dre_ehm, handles.dre_w, handles.dre_ws,...
                        handles.dre_predict, handles.dre_plot, handles.dre_panel];

handles.dre_tabcontent=[handles.drev_sn, handles.drev_sn_box, handles.drev_des, handles.drev_des_box, handles.drev_spec, handles.drev_spec_box,...
                        handles.drev_show_sp, handles.drev_save_str, handles.drev_str, handles.drev_str_box, handles.drev_show_str, handles.drev_del_str,...
                        handles.drev_sh, handles.drev_sh_hh, handles.drev_sh_dots, handles.drev_sh_mm,...
                        handles.drev_eh, handles.drev_eh_hh, handles.drev_eh_dots, handles.drev_eh_mm,...
                        handles.drev_val, handles.drev_val_box, handles.drev_enter, handles.drev_plot, handles.drev_run];

handles.drs_tabcontent=[];

handles.report_tabcontent=[];

handles.baseline_done = 0; % Used to have access to DR Evaluation tab because it is based on the baseline period.
                           % 0 deny the access. It will be set up to 1 in the DR baseline tab once the baseline prediction will be done

set(handles.tabs(1),'Value',1);
set(handles.inputs_training_tabcontent(1),'Value',1);
set(handles.inputs_testing_tabcontent(2:end),'Visible','off');
set(handles.mi_tabcontent(1:end),'Visible','off');
set(handles.drb_tabcontent(1:end), 'Visible', 'off');
set(handles.dre_tabcontent(1:end), 'Visible', 'off');
set(handles.drs_tabcontent(1:end), 'Visible', 'off');
set(handles.report_tabcontent(1:end), 'Visible', 'off');


guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Inputs_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                                                               TABS                                                             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Inputs tab
function inputs_tab_Callback(hObject, eventdata, handles)

    state=[get(handles.mi_tab,'Value') get(handles.drb_tab,'Value') get(handles.dre_tab,'Value') get(handles.drs_tab,'Value') get(handles.report_tab,'Value')];
    if sum(state)==1
        set(handles.training,'Value',1);
        set(handles.testing,'Value',0);
        set(handles.wd_menu,'Value',1);
        set(handles.sd_menu,'Value',1);
        set(handles.bd_menu,'Value',1);
        set(handles.tabs(2:end),'Value',0);
        set(handles.inputs_training_tabcontent(1:end), 'Visible', 'on');
        set(handles.inputs_testing_tabcontent(1), 'Visible', 'on');
        set(handles.inputs_testing_tabcontent(2:end), 'Visible', 'off');
        set(handles.mi_tabcontent(1:end), 'Visible', 'off');
        set(handles.drb_tabcontent(1:end), 'Visible', 'off');
        set(handles.dre_tabcontent(1:end), 'Visible', 'off');
        set(handles.drs_tabcontent(1:end), 'Visible', 'off');
        set(handles.report_tabcontent(1:end), 'Visible', 'off');
        axes(handles.mi_plot);
        plot(NaN);
        axes(handles.dre_plot);
        plot(NaN);
        axes(handles.ce_plot);
        plot(NaN);
        axes(handles.drev_plot);
        plot(NaN);
    else
        set(handles.tabs(1),'Value',1);
    end

 % Training sub-tab
    function training_Callback(hObject, eventdata, handles)
        state=get(handles.testing,'Value');
        if state==1
            set(handles.testing,'Value',0);
            set(handles.wd_menu,'Value',1);
            set(handles.sd_menu,'Value',1);
            set(handles.bd_menu,'Value',1);
            set(handles.inputs_training_tabcontent(2:end), 'Visible', 'on');
            set(handles.inputs_testing_tabcontent(2:end), 'Visible', 'off');
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
        else
            set(handles.training,'Value',1);
        end
   

    % Testing sub-tab
    function testing_Callback(hObject, eventdata, handles)
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.testing,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else
        state=get(handles.training,'Value');
        if state==1
            set(handles.training,'Value',0);
            set(handles.wd_menu_test,'Value',1);
            set(handles.sd_menu_test,'Value',1);
            set(handles.bd_menu_test,'Value',1);
            set(handles.inputs_training_tabcontent(2:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(2:end), 'Visible', 'on');
            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
        else
            set(handles.testing,'Value',1);
        end
    end
   
        
% Model identification tab
function mi_tab_Callback(hObject, eventdata, handles)

    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.mi_tab,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else   
        state=[get(handles.inputs_tab,'Value') get(handles.drb_tab,'Value') get(handles.dre_tab,'Value') get(handles.drs_tab,'Value') get(handles.report_tab,'Value')];
        if sum(state)==1
            set(handles.tabs(1),'Value',0);
            set(handles.tabs(3:end),'Value',0);
            set(handles.mi_tabcontent(1:end), 'Visible', 'on');
            set(handles.inputs_training_tabcontent(1:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(1:end), 'Visible', 'off');
            set(handles.drb_tabcontent(1:end), 'Visible', 'off');
            set(handles.dre_tabcontent(1:end), 'Visible', 'off');
            set(handles.drs_tabcontent(1:end), 'Visible', 'off');
            set(handles.report_tabcontent(1:end), 'Visible', 'off');
            
            set(handles.srt_ml_box,'String','10');
            set(handles.cvt_ml_box,'String','10');
            set(handles.cvt_k_box,'String','20');
            set(handles.brt_ml_box,'String','2');
            set(handles.brt_nt_box,'String','100');
            set(handles.rf_ml_box,'String','5');
            set(handles.rf_nt_box,'String','100');
    
            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
            axes(handles.dre_plot);
            plot(NaN);
            axes(handles.ce_plot);
            plot(NaN);
            axes(handles.drev_plot);
            plot(NaN);
        else
            set(handles.mi_tab,'Value',1);
        end
    end
   
    
    % --- Executes on button press in drb_tab.
function drb_tab_Callback(hObject, eventdata, handles)

    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.drb_tab,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    elseif sum([str2num(get(handles.srt_e,'String')),str2num(get(handles.cvt_e,'String')),str2num(get(handles.brt_e,'String')),...
               str2num(get(handles.rf_e,'String')),str2num(get(handles.mbt_e,'String'))])==0
        set(handles.drb_tab,'Value',0);
        errordlg('At least one tree must be grown','Regression Tree missing');
    else
        state=[get(handles.inputs_tab,'Value') get(handles.mi_tab,'Value') get(handles.dre_tab,'Value') get(handles.drs_tab,'Value') get(handles.report_tab,'Value')];
        if sum(state)==1
            set(handles.tabs(1:2),'Value',0);
            set(handles.tabs(4:end),'Value',0);
            set(handles.drb_tabcontent(1:end), 'Visible', 'on');
            set(handles.inputs_training_tabcontent(1:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(1:end), 'Visible', 'off');
            set(handles.mi_tabcontent(1:end), 'Visible', 'off');
            set(handles.dre_tabcontent(1:end), 'Visible', 'off');
            set(handles.drs_tabcontent(1:end), 'Visible', 'off');
            set(handles.report_tabcontent(1:end), 'Visible', 'off');
            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
            axes(handles.mi_plot);
            plot(NaN);
            axes(handles.drev_plot);
            plot(NaN);
        else
            set(handles.drb_tab,'Value',1);
        end
    end
 

% --- Executes on button press in dre_tab.
function dre_tab_Callback(hObject, eventdata, handles)
 
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.dre_tab,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    elseif handles.baseline_done == 0
        set(handles.dre_tab,'Value',0);
        errordlg('Baseline must be predicted','Baseline period mising');
    else 
        state=[get(handles.inputs_tab,'Value') get(handles.mi_tab,'Value') get(handles.drb_tab,'Value') get(handles.drs_tab,'Value') get(handles.report_tab,'Value')];
        if sum(state)==1
            set(handles.tabs(1:3),'Value',0);
            set(handles.tabs(5:end),'Value',0);
            set(handles.dre_tabcontent(1:end), 'Visible', 'on');
            set(handles.inputs_training_tabcontent(1:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(1:end), 'Visible', 'off');
            set(handles.mi_tabcontent(1:end), 'Visible', 'off');
            set(handles.drb_tabcontent(1:end), 'Visible', 'off');
            set(handles.drs_tabcontent(1:end), 'Visible', 'off');
            set(handles.report_tabcontent(1:end), 'Visible', 'off');

            handles.drev_strategy_Default={'Default' 'Default strategy'};
            % Importing Schedule variables from Testing schedule data to Control setpoint specification box

            ScheduleList = get(handles.sd_menu_test,'String');
            set(handles.drev_spec_box,'String',ScheduleList(2:end-3)); % (2:end-3) because we don't want to take "Select..." and month,day,hour from the list

            % Assigning default value to setpoints (80°F) 

            for ii=2:(length(ScheduleList)-3) % Except last three items that represent the time
                handles.(ScheduleList{ii}) = 80*ones(length(handles.date13num(handles.baseline_sd_index:handles.baseline_ed_index)),1);
                handles.drev_strategy_Default{ii+1} = handles.(ScheduleList{ii});
            end
            handles.time_dre=handles.date13num(handles.baseline_sd_index:handles.baseline_ed_index);

            set(handles.drev_val_box,'String','0')
            guidata(hObject, handles);

            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
            axes(handles.mi_plot);
            plot(NaN);
            axes(handles.dre_plot);
            plot(NaN);
            axes(handles.ce_plot);
            plot(NaN);

        else
            set(handles.dre_tab,'Value',1);
        end
    end



% --- Executes on button press in drs_tab.
function drs_tab_Callback(hObject, eventdata, handles)
 
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.drs_tab,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else    
        state=[get(handles.inputs_tab,'Value') get(handles.mi_tab,'Value') get(handles.drb_tab,'Value') get(handles.dre_tab,'Value') get(handles.report_tab,'Value')];
        if sum(state)==1
            set(handles.tabs(1:4),'Value',0);
            set(handles.tabs(6),'Value',0);
            set(handles.drs_tabcontent(1:end), 'Visible', 'on');
            set(handles.inputs_training_tabcontent(1:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(1:end), 'Visible', 'off');
            set(handles.mi_tabcontent(1:end), 'Visible', 'off');
            set(handles.drb_tabcontent(1:end), 'Visible', 'off');
            set(handles.dre_tabcontent(1:end), 'Visible', 'off');
            set(handles.report_tabcontent(1:end), 'Visible', 'off');
            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
            axes(handles.mi_plot);
            plot(NaN);
            axes(handles.dre_plot);
            plot(NaN);
            axes(handles.ce_plot);
            plot(NaN);
            axes(handles.drev_plot);
            plot(NaN);
        else
            set(handles.drs_tab,'Value',1);
        end
    end
 

% --- Executes on button press in report_tab.
function report_tab_Callback(hObject, eventdata, handles)
    
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        set(handles.report_tab,'Value',0);
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else     
        state=[get(handles.inputs_tab,'Value') get(handles.mi_tab,'Value') get(handles.drb_tab,'Value') get(handles.dre_tab,'Value') get(handles.drs_tab,'Value')];
        if sum(state)==1
            set(handles.tabs(1:5),'Value',0);
            set(handles.drs_tabcontent(1:end), 'Visible', 'on');
            set(handles.inputs_training_tabcontent(1:end), 'Visible', 'off');
            set(handles.inputs_testing_tabcontent(1:end), 'Visible', 'off');
            set(handles.mi_tabcontent(1:end), 'Visible', 'off');
            set(handles.drb_tabcontent(1:end), 'Visible', 'off');
            set(handles.dre_tabcontent(1:end), 'Visible', 'off');
            set(handles.drs_tabcontent(1:end), 'Visible', 'off');
            axes(handles.wd_plot);
            plot(NaN);
            axes(handles.sd_plot);
            plot(NaN);
            axes(handles.bd_plot);
            plot(NaN);
            axes(handles.wd_plot_test);
            plot(NaN);
            axes(handles.sd_plot_test);
            plot(NaN);
            axes(handles.bd_plot_test);
            plot(NaN);
            axes(handles.mi_plot);
            plot(NaN);
            axes(handles.dre_plot);
            plot(NaN);
            axes(handles.ce_plot);
            plot(NaN);
            axes(handles.drev_plot);
            plot(NaN);
        else
            set(handles.report_tab,'Value',1);
        end
    end

    
% --- Console
function console_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function console_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% Hint: get(hObject,'Value') returns toggle state of mi_tab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                                                             INPUTS                                                             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%                                                             Training                                                           %%%%%%%



% --- Weather data button
function wd_Callback(hObject, eventdata, handles)
    
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading weather data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_wd=load(path);
    time_wd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\DateTime_data_2012.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_wd=data_wd.(fname);
    time_wd=time_wd.DateTime_data_2012;
    names=['Select...' fieldnames(data_wd)'];
    set(handles.wd_menu,'String',names);
    waitbar(0.66);
    handles.data_wd=data_wd;
    handles.time_wd=time_wd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);

% --- Weather automatic load
function training_wdload_Callback(hObject, eventdata, handles)

    h=waitbar(0,'Loading data...');
    st='Loading weather data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    
    data_wd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\weather_data_2012.mat');
    time_wd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\DateTime_data_2012.mat');
    waitbar(0.33);
    data_wd=data_wd.weather_data_2012;
    time_wd=time_wd.DateTime_data_2012;
    names=['Select...' fieldnames(data_wd)'];
    set(handles.wd_menu,'String',names);
    waitbar(0.66);
    handles.data_wd=data_wd;
    handles.time_wd=time_wd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);


% --- Schedule data button
function sd_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading schedule data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_sd=load(path);
    time_sd=load('DateTime_data_2012.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_sd=data_sd.(fname);
    time_sd=time_sd.DateTime_data_2012;
    names=['Select...' fieldnames(data_sd)'];
    set(handles.sd_menu,'String',names);
    waitbar(0.66);
    handles.data_sd=data_sd;
    handles.time_sd=time_sd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);
    
% --- Building data button
function bd_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading building data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_bd=load(path);
    time_bd=load('DateTime_data_2012.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_bd=data_bd.(fname);
    time_bd=time_bd.DateTime_data_2012;
    names=['Select...' fieldnames(data_bd)'];
    set(handles.bd_menu,'String',names);
    waitbar(0.66);
    handles.data_bd=data_bd;
    handles.time_bd=time_bd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);
  
% --- Weather data menu
function wd_menu_Callback(hObject, eventdata, handles)
    contents_wd = cellstr(get(hObject,'String'));
    element_wd = contents_wd{get(hObject,'Value')};
    handles.element_wd=element_wd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function wd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
% --- Schedule data menu
function sd_menu_Callback(hObject, eventdata, handles)
    contents_sd = cellstr(get(hObject,'String'));
    element_sd = contents_sd{get(hObject,'Value')};
    handles.element_sd=element_sd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function sd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Building data menu
function bd_menu_Callback(hObject, eventdata, handles)
    contents_bd = cellstr(get(hObject,'String'));
    element_bd = contents_bd{get(hObject,'Value')};
    handles.element_bd=element_bd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function bd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Weather data view button
function view_wd_Callback(hObject, eventdata, handles)
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else    
        axes(handles.wd_plot);
        temp=handles.data_wd.(handles.element_wd);
        plot(handles.time_wd,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end
    
% --- Schedule data view button
function view_sd_Callback(hObject, eventdata, handles)
    if strcmp(get(handles.sd_menu,'String'),'Select...')
        errordlg('Schedule data must be uploaded','Upload process incomplete');
    else 
        axes(handles.sd_plot);
        temp=handles.data_sd.(handles.element_sd);
        plot(handles.time_sd,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end

% --- Building data view button
function view_bd_Callback(hObject, eventdata, handles)
    if strcmp(get(handles.bd_menu,'String'),'Select...')
        errordlg('Building data must be uploaded','Upload process incomplete');
    else    
        axes(handles.bd_plot);
        temp=handles.data_bd.(handles.element_bd);
        plot(handles.time_bd,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end

% --- Create structure button (Done)
function create_structure_Callback(hObject, eventdata, handles)
    
    if strcmp(get(handles.wd_menu,'String'),'Select...')
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else
        h = waitbar(0,'Creating Proxy Variables and Data Structure');
        steps = 1000;
        for step = 1:steps
            % computations take place here
            waitbar(step / steps)
        end
        close(h)
    end

function training_sdm_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_sdm as text
%        str2double(get(hObject,'String')) returns contents of training_sdm as a double


% --- Executes during object creation, after setting all properties.
function training_sdm_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_sdd_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_sdd as text
%        str2double(get(hObject,'String')) returns contents of training_sdd as a double


% --- Executes during object creation, after setting all properties.
function training_sdd_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_sdy_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_sdy as text
%        str2double(get(hObject,'String')) returns contents of training_sdy as a double


% --- Executes during object creation, after setting all properties.
function training_sdy_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_edm_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_edm as text
%        str2double(get(hObject,'String')) returns contents of training_edm as a double


% --- Executes during object creation, after setting all properties.
function training_edm_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_edd_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_edd as text
%        str2double(get(hObject,'String')) returns contents of training_edd as a double


% --- Executes during object creation, after setting all properties.
function training_edd_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_edy_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_edy as text
%        str2double(get(hObject,'String')) returns contents of training_edy as a double


% --- Executes during object creation, after setting all properties.
function training_edy_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function training_stn_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_stn as text
%        str2double(get(hObject,'String')) returns contents of training_stn as a double


% --- Executes during object creation, after setting all properties.
function training_stn_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function training_wdbox_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of training_wdbox as text
%        str2double(get(hObject,'String')) returns contents of training_wdbox as a double


% --- Executes during object creation, after setting all properties.
function training_wdbox_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%%%%%%%%%                                                             Testing                                                            %%%%%%%

% --- Weather data button
function wd_test_Callback(hObject, eventdata, handles)
    
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading weather data for testing...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_wd_test=load(path);
    time_wd_test=load('DateTime_data_2013.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_wd_test=data_wd_test.(fname);
    time_wd_test=time_wd_test.DateTime_data_2013;
    names=['Select...' fieldnames(data_wd_test)'];
    set(handles.wd_menu_test,'String',names);
    waitbar(0.66);
    handles.data_wd_test=data_wd_test;
    handles.time_wd_test=time_wd_test;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);
    
% --- Weather automatic load
function testing_wdload_Callback(hObject, eventdata, handles)

    h=waitbar(0,'Loading data...');
    st='Loading weather data for testing...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    
    data_wd_test=load('weather_data_2013.mat');
    time_wd_test=load('DateTime_data_2013.mat');
    waitbar(0.33);
    data_wd_test=data_wd_test.weather_data_2013;
    time_wd_test=time_wd_test.DateTime_data_2013;
    names=['Select...' fieldnames(data_wd_test)'];
    set(handles.wd_menu_test,'String',names);
    waitbar(0.66);
    handles.data_wd_test=data_wd_test;
    handles.time_wd_test=time_wd_test;
    handles.time_wd_test
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);

% --- Schedule data button
function sd_test_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading schedule data for testing...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_sd_test=load(path);
    time_sd_test=load('DateTime_data_2013.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_sd_test=data_sd_test.(fname);
    time_sd_test=time_sd_test.DateTime_data_2013;
    names=['Select...' fieldnames(data_sd_test)'];
    set(handles.sd_menu_test,'String',names);
    waitbar(0.66);
    handles.data_sd_test=data_sd_test;
    handles.time_sd_test=time_sd_test;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);
    
% --- Building data button
function bd_test_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading building data for testing...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    path=strcat(pathname,filename);
    data_bd_test=load(path);
    time_bd_test=load('DateTime_data_2013.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_bd_test=data_bd_test.(fname);
    time_bd_test=time_bd_test.DateTime_data_2013;
    names=['Select...' fieldnames(data_bd_test)'];
    set(handles.bd_menu_test,'String',names);
    waitbar(0.66);
    handles.data_bd_test=data_bd_test;
    handles.time_bd_test=time_bd_test;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    waitbar(1);
    close(h);
  
% --- Weather data menu
function wd_menu_test_Callback(hObject, eventdata, handles)
    contents_wd = cellstr(get(hObject,'String'));
    element_wd = contents_wd{get(hObject,'Value')};
    handles.element_wd_test=element_wd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function wd_menu_test_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
% --- Schedule data menu
function sd_menu_test_Callback(hObject, eventdata, handles)
    contents_sd = cellstr(get(hObject,'String'));
    element_sd = contents_sd{get(hObject,'Value')};
    handles.element_sd_test=element_sd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function sd_menu_test_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Building data menu
function bd_menu_test_Callback(hObject, eventdata, handles)
    contents_bd = cellstr(get(hObject,'String'));
    element_bd = contents_bd{get(hObject,'Value')};
    handles.element_bd_test=element_bd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function bd_menu_test_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Weather data view button
function view_wd_test_Callback(hObject, eventdata, handles)

    if strcmp(get(handles.wd_menu_test,'String'),'Select...')
        errordlg('Weather data must be uploaded','Upload process incomplete');
    else    
        axes(handles.wd_plot_test);
        temp=handles.data_wd_test.(handles.element_wd_test);
        size(temp)
        handles.time_wd_test
        plot(handles.time_wd_test,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end
    
% --- Schedule data view button
function view_sd_test_Callback(hObject, eventdata, handles)
    
    if strcmp(get(handles.sd_menu_test,'String'),'Select...')
        errordlg('Schedule data must be uploaded','Upload process incomplete');
    else    
        axes(handles.sd_plot_test);
        temp=handles.data_sd_test.(handles.element_sd_test);
        plot(handles.time_sd_test,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end

% --- Building data view button
function view_bd_test_Callback(hObject, eventdata, handles)
    
    if strcmp(get(handles.bd_menu_test,'String'),'Select...')
        errordlg('Building data must be uploaded','Upload process incomplete');
    else    
        axes(handles.bd_plot_test);
        temp=handles.data_bd_test.(handles.element_bd_test);
        plot(handles.time_bd_test,temp(1:end-1));
        datetick('x','mmm','keepticks')
    end

% --- Create structure button (Done)
function create_structure_test_Callback(hObject, eventdata, handles)
    h = waitbar(0,'Creating Proxy Variables and Data Structure for Testing');
    steps = 1000;
    for step = 1:steps
        % computations take place here
        waitbar(step / steps)
    end
    close(h)

    
function testing_sdm_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_sdm as text
%        str2double(get(hObject,'String')) returns contents of testing_sdm as a double


% --- Executes during object creation, after setting all properties.
function testing_sdm_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function testing_sdd_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of testing_sdd as text
%        str2double(get(hObject,'String')) returns contents of testing_sdd as a double

% --- Executes during object creation, after setting all properties.
function testing_sdd_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function testing_sdy_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_sdy as text
%        str2double(get(hObject,'String')) returns contents of testing_sdy as a double


% --- Executes during object creation, after setting all properties.
function testing_sdy_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function testing_edm_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_edm as text
%        str2double(get(hObject,'String')) returns contents of testing_edm as a double


% --- Executes during object creation, after setting all properties.
function testing_edm_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function testing_edd_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_edd as text
%        str2double(get(hObject,'String')) returns contents of testing_edd as a double


% --- Executes during object creation, after setting all properties.
function testing_edd_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function testing_edy_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_edy as text
%        str2double(get(hObject,'String')) returns contents of testing_edy as a double


% --- Executes during object creation, after setting all properties.
function testing_edy_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function testing_stn_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_stn as text
%        str2double(get(hObject,'String')) returns contents of testing_stn as a double


% --- Executes during object creation, after setting all properties.
function testing_stn_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function testing_wdbox_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of testing_wdbox as text
%        str2double(get(hObject,'String')) returns contents of testing_wdbox as a double


% --- Executes during object creation, after setting all properties.
function testing_wdbox_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                                               MODEL IDENTIFICATION                                                             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes on button press in train.
function train_Callback(hObject, eventdata, handles)
    %% Prepare Training data, i.e from 2012

    if sum([get(handles.srt,'Value') get(handles.cvt,'Value') get(handles.brt,'Value') get(handles.rf,'Value') get(handles.mbt,'Value')]) == 0
        errordlg('At least one method must be selected','Missing method');
    else     
    
        st='Preparing data..';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

        load large_office_all_data_2k12.mat

        assisted = 1;
        handles.assisted = assisted;
        if(assisted)
            st='Schedule Assist ON';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
            %Feature matrix with weather and schelue
            Xtrain = [chwsetp,clgsetp,...
               dom,dow,htgsetp,hwsetp,outdry,outhum...
                ,outwet,tod,windir,winspeed];
            Xtrain(1,:)=[];
            % Output vector
            Ytrain = tpower;
            Ytrain(1,:)=[];
            handles.Ytrain=Ytrain;
            colnames={'chwsetp','clgsetp','dom','dow','htgsetp','hwsetp','outdry','outhum'...
            ,'outwet','tod','windir','winspeed'};
            handles.colnames=colnames;
            catcol = [3,4,10];
        else
            st='Schedule Assist OFF';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
            %Feature matrix with only weather
            Xtrain = [dom,dow,outdry,outhum...
                ,outwet,tod,windir,winspeed];
            Xtrain(1,:)=[];
            %Output vector
            Ytrain = tpower;
            Ytrain(1,:)=[];
            handles.Ytrain=Ytrain;

            colnames={'dom','dow','outdry','outhum'...
            ,'outwet','tod','windir','winspeed'};
            catcol = [1,2,6];
        end

        date12=load('date12num.mat');

        handles.date12num=date12.date12num;

        date13=load('DateTime_data_2013.mat');

        handles.date13num=date13.DateTime_data_2013;

        % Column names and indicies of the columns which are categorical

        st='Done.';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

            % Now prepare testing data, i.e from 2013.
            st='Evaluating on 2013 Testing Data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            load large_office_all_data_2k13.mat

            if(assisted)
                % Feature matrix with all 34 features as columns
                Xtest = [chwsetp,clgsetp,...
                    dom,dow,htgsetp,hwsetp,outdry,outhum...
                    ,outwet,tod,windir,winspeed];
                Xtest(1,:)=[];
                % Output vector
                Ytest = tpower;
                Ytest(1,:)=[];
                handles.Ytest=Ytest;
            else
                Xtest = [dom,dow,outdry,outhum...
                    ,outwet,tod,windir,winspeed];
                Xtest(1,:)=[];
                % Output vector
                Ytest = tpower;
                Ytest(1,:)=[];
                handles.Ytest=Ytest;
            end
        handles.Xtrain=Xtrain;
        handles.Ytrain=Ytrain;
        handles.Xtest=Xtest;
        handles.Ytest=Ytest;
        st='Done.';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);


        if get(handles.srt,'Value')
            % Start Tree Regression
            st='Learning Regression Tree on 2012 Annual Data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

    %         minleaf = 10;   % minimium number of leaf node observations
            minleaf=str2num(get(handles.srt_ml_box,'String'))
            tic
            largetree12 = fitrtree(Xtrain,Ytrain,'PredictorNames',colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,'MinLeafSize',minleaf);
            handles.largetree12 = largetree12;
            toc
            % view the tree view(rtree);
            %view(largetree12,'mode','graph');

            % predict on training and testing data and plot the fits
            Yfit = predict(largetree12,Xtrain);
            handles.Yfit=Yfit;

            % RMSE
            [a,b]=rsquare(Ytrain,Yfit);
            fprintf('2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak: %.4f, NRMSD: %.2f \n\n'...
                ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));
            set(handles.srt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));


            % Ontain Predictions for the entire year and for just july
            Ypredict = predict(largetree12,Xtest);
            handles.Ypredict=Ypredict;
            % RMSE
            [a,b]=rsquare(Ytest,Ypredict);
            fprintf('2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
                ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));
            set(handles.srt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));

            st='Single Regression Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.cvt,'Value')
            % Improve the tree by using k-fold cross validation
            st='Learning a cross validated tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            minleaf=str2num(get(handles.cvt_ml_box,'String'))
    %         kf = 20;
            kf=str2num(get(handles.cvt_k_box,'String'))

            tic
            largetreeCV = fitrtree(Xtrain,Ytrain,'PredictorNames',colnames,...
                'ResponseName','Total Power','CategoricalPredictors',catcol,...
                'MinLeafSize',minleaf,'CrossVal','on','KFold',kf); % default is 10-fold
            handles.largetreeCV = largetreeCV;
            toc

            YfitCV = kfoldPredict(largetreeCV);
            handles.YfitCV=YfitCV;

            % RMSE
            [a,b]=rsquare(Ytrain,YfitCV);
            fprintf('Cross Validated 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n'...
                ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));
            set(handles.cvt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));

            % Now use the cross validated trees to make predictions on the 2013 testing
            % data
            YpredictCVk=zeros(length(Xtest),kf);
            for ii=1:kf
                YpredictCVk(:,ii)=predict(largetreeCV.Trained{ii,1},Xtest);
            end
            YpredictCV = sum(YpredictCVk,2)/kf;
            handles.YpredictCV=YpredictCV;

            % RMSE
            [a,b]=rsquare(Ytest,YpredictCV);
            fprintf('Cross Validated 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n\n'...
                ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));
            set(handles.cvt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));
            st='Cross-Validation Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.brt,'Value')
            % Boosted Regression trees

            st='Learning a boosted regression tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            minleaf=str2num(get(handles.brt_ml_box,'String'))
    %         num_trees = 500;
            num_trees=str2num(get(handles.brt_nt_box,'String'))
            t = RegressionTree.template('MinLeaf',minleaf);
            mdl = fitensemble(Xtrain,Ytrain,'LSBoost',num_trees,t,'PredictorNames',...
                colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,...
               'LearnRate',0.01);
           handles.mdl=mdl;

            Ypreden = predict(mdl,Xtest);
            handles.YfitBRT=Ypreden;
            %Ypreden = kfoldPredict(mdl);



            [a,b]=rsquare(Ytest,Ypreden);
            fprintf('Boosted Tree 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
            ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

            set(handles.brt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));

            Ypreden = predict(mdl,Xtrain);
            handles.YpredictBRT=Ypreden;
            %Ypreden = kfoldPredict(mdl);

            [a,b]=rsquare(Ytrain,Ypreden);
            fprintf('Boosted Tree 2013(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
            ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));

            set(handles.brt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));

            st='Boosted Regression Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.rf,'Value')

            st='Learning a random forest for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            minleaf=str2num(get(handles.rf_ml_box,'String'))
            num_trees=str2num(get(handles.rf_nt_box,'String'))
    %         leaf = [5 10 50 100];
    %         col = 'rbcmyk';
            %figure
    %         for i=1:length(leaf)
    %             b = TreeBagger(300,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
    %                 'CategoricalPredictors',catcol,'MinLeaf',leaf(i));
             %   plot(sqrt(oobError(b)),col(i));
              %  hold on;
    %         end
    %         xlabel 'Number of Grown Trees';
    %         ylabel 'Root Mean Squared Error' ;
    %         legend({'5','10' '50' '100' '200'},'Location','NorthEast');
    %         hold off;

    %         figure();
    %         bar(b.OOBPermutedVarDeltaError);
    %         xlabel 'Feature' ;
    %         ylabel 'Out-of-Bag Feature Importance';
    %         set(gca,'XTickLabel',colnames);


            B = TreeBagger(num_trees,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
                    'CategoricalPredictors',catcol,'MinLeaf',minleaf);
            handles.B=B;
    %         figure();
    %         plot(sqrt(oobError(B)));

            Ybag = predict(B,Xtest);
            handles.YfitRF=Ybag;

            [a,b]=rsquare(Ytest,Ybag);
            fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
                ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

            set(handles.rf_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));

            Ybag = predict(B,Xtrain);
            handles.YpredictRF=Ybag;
            [a,b]=rsquare(Ytrain,Ybag);
            fprintf('Random Forests 2013(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
                ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));

            set(handles.rf_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));


            st='Random Forest training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.mbt,'Value')
            % Model Based RT

            st='Learning a model based random tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            % Try the M5 method in which leaves of the tree are linear regression
            % functions
            if(assisted)
                binCat = [0,0,3,3,0,0,0,0,0,3,0,0]; % denotes continuous and catergorical

            else

                binCat = [3,3,0,0,0,3,0,0]; % denotes continuous and catergorical
            end
            %regresors

            trainParams = m5pparams(false,4,true);

            model = m5pbuild(Xtrain, Ytrain,trainParams, binCat,true);
            handles.model = model;
            Ypredm5 = m5ppredict(model,Xtest);
            handles.YfitMBT=Ypredm5;
            [a,b]=rsquare(Ytest,Ypredm5);
            fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
                ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

            set(handles.mbt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));

            Ypredm5 = m5ppredict(model,Xtrain);
            handles.YpredictMBT=Ypredm5;
            [a,b]=rsquare(Ytrain,Ypredm5);
            fprintf('Random Forests 2013(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
                ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));

            set(handles.mbt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));

            st='Model Based Random Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        guidata(hObject,handles);
    end
% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)

   handles.date12num

function rf_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of rf_ml_box as text
%        str2double(get(hObject,'String')) returns contents of rf_ml_box as a double


% --- Executes during object creation, after setting all properties.
function rf_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function brt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of brt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of brt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function brt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cvt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of cvt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of cvt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function cvt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function srt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of srt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of srt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function srt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in srt.
function srt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of srt


% --- Executes on button press in cvt.
function cvt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of cvt


% --- Executes on button press in brt.
function brt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of brt


% --- Executes on button press in rf.
function rf_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of rf


% --- Executes on button press in mbt.
function mbt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of mbt



function rf_nt_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of rf_nt_box as text
%        str2double(get(hObject,'String')) returns contents of rf_nt_box as a double


% --- Executes during object creation, after setting all properties.
function rf_nt_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function brt_nt_box_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of brt_nt_box as text
%        str2double(get(hObject,'String')) returns contents of brt_nt_box as a double


% --- Executes during object creation, after setting all properties.
function brt_nt_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cvt_k_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of cvt_k_box as text
%        str2double(get(hObject,'String')) returns contents of cvt_k_box as a double


% --- Executes during object creation, after setting all properties.
function cvt_k_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in def_value.
function def_value_Callback(hObject, eventdata, handles)

    set(handles.srt_ml_box,'String','10');
    set(handles.cvt_ml_box,'String','10');
    set(handles.cvt_k_box,'String','20');
    set(handles.brt_ml_box,'String','2');
    set(handles.brt_nt_box,'String','100');
    set(handles.rf_ml_box,'String','5');
    set(handles.rf_nt_box,'String','100');

% --- Executes on button press in err_plot_button.
function err_plot_button_Callback(hObject, eventdata, handles)
    
    axes(handles.mi_plot);
    plot(NaN);
    axis normal
    
    if get(handles.training_fit,'Value')
        if sum([str2num(get(handles.srt_e,'String')),str2num(get(handles.cvt_e,'String')),str2num(get(handles.brt_e,'String')),...
               str2num(get(handles.rf_e,'String')),str2num(get(handles.mbt_e,'String'))]) == 0
            errordlg('At least one tree must be grown','Regression Tree missing');
        else
            plot(handles.date12num,handles.Ytrain/1e6);
            leg=char('Ground Truth');
            hold on;
            if get(handles.srt,'Value')
                plot(handles.date12num,handles.Yfit/1e6);
                leg=char(leg,'Single Tree');
            end
            if get(handles.cvt,'Value')
                plot(handles.date12num,handles.YfitCV/1e6);
                leg=char(leg,'CV Tree');
            end
            if get(handles.brt,'Value')
                plot(handles.date12num,handles.YfitBRT/1e6);
                leg=char(leg,'BR Tree');
            end
            if get(handles.rf,'Value')
                plot(handles.date12num,handles.YfitRF/1e6);
                leg=char(leg,'Random Forest');
            end
            if get(handles.mbt,'Value')
                plot(handles.date12num,handles.YfitMBT/1e6);
                leg=char(leg,'MBR Tree');
            end
            hold off;
            datetick('x','mmm','keepticks')
            legend(leg);
        end
    elseif get(handles.testing_fit,'Value')
        if sum([str2num(get(handles.srt_e,'String')),str2num(get(handles.cvt_e,'String')),str2num(get(handles.brt_e,'String')),...
               str2num(get(handles.rf_e,'String')),str2num(get(handles.mbt_e,'String'))]) == 0
            errordlg('At least one tree must be grown','Regression Tree missing');
        else
            plot(handles.date13num,handles.Ytest/1e6);
            leg=char('Ground Truth');
            hold on;
            if get(handles.srt,'Value')
                plot(handles.date13num,handles.Ypredict/1e6);
                leg=char(leg,'Single Tree');
            end
            if get(handles.cvt,'Value')
                plot(handles.date13num,handles.YpredictCV/1e6);
                leg=char(leg,'CV Tree');
            end
            if get(handles.brt,'Value')
                plot(handles.date13num,handles.YpredictBRT/1e6);
                leg=char(leg,'BR Tree');
            end
            if get(handles.rf,'Value')
                plot(handles.date13num,handles.YpredictRF/1e6);
                leg=char(leg,'Random Forest');
            end
            if get(handles.mbt,'Value')
                plot(handles.date13num,handles.YpredictMBT/1e6);
                leg=char(leg,'MBR Tree');
            end
            hold off;
            datetick('x','mmm','keepticks')
            legend(leg);
        end
    elseif get(handles.brt_rmse,'Value')
        if sum (str2num(get(handles.brt_e,'String')) ) == 0
            errordlg('Boosted Regression tree must be grown','Regression Tree missing');
        else        
            mdl=handles.mdl;
            [predictorImportance,sortedIndex] = sort(mdl.predictorImportance);
            barh(predictorImportance/1e6)
            set(gca,'ytickLabel',handles.colnames(sortedIndex))
            xlabel('Relative Predictor Importance')
        end
    
    elseif get(handles.rf_rmse,'Value')
        if sum( str2num(get(handles.rf_e,'String')) ) == 0
            errordlg('Random Forest must be grown','Regression Tree missing');
        else
            B=handles.B;
            plot(sqrt(oobError(B)));
            xlabel 'Number of Grown Trees';
            ylabel 'Root Mean Squared Error' ;
        end
    
    elseif get(handles.brt_fi,'Value')
        if sum( str2num(get(handles.brt_e,'String')) ) == 0
            errordlg('Boosted Regression tree must be grown','Regression Tree missing');
        else
            mdl=handles.mdl;
            trainingLoss = resubLoss(mdl,'mode','cumulative');
            testLoss = loss(mdl,handles.Xtest,handles.Ytest,'mode','cumulative');
            plot(sqrt(trainingLoss)), hold on
            plot(sqrt(testLoss),'r')
            legend({'Training Set Loss','Test Set Loss'})
            xlabel('Number of trees');
            ylabel('Mean Squared Error');
        end
    
    elseif get(handles.rf_fi,'Value')
        if sum( str2num(get(handles.rf_e,'String')) ) == 0
            errordlg('Random Forest must be grown','Regression Tree missing');
        else
            B=handles.B;
            bar(B.OOBPermutedVarDeltaError);
            xlabel 'Feature' ;
            ylabel 'Out-of-Bag Feature Importance';
            set(gca,'XTickLabel',handles.colnames);
        end
    end

% --- Executes on button press in brt_rmse.
function brt_rmse_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of brt_rmse


% --- Executes on button press in rf_rmse.
function rf_rmse_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rf_rmse


% --- Executes on button press in brt_fi.
function brt_fi_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of brt_fi


% --- Executes on button press in rf_fi.
function rf_fi_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rf_fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                                                        DR BASELINE                                                             %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function ce_box_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of ce_box as text
%        str2double(get(hObject,'String')) returns contents of ce_box as a double

% --- Executes during object creation, after setting all properties.
function ce_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in ce_load.
function ce_load_Callback(hObject, eventdata, handles)

function dre_dm_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of dre_dm as text
%        str2double(get(hObject,'String')) returns contents of dre_dm as a double

% --- Executes during object creation, after setting all properties.
function dre_dm_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dre_dd_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of dre_dd as text
%        str2double(get(hObject,'String')) returns contents of dre_dd as a double

% --- Executes during object creation, after setting all properties.
function dre_dd_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dre_dy_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of dre_dy as text
%        str2double(get(hObject,'String')) returns contents of dre_dy as a double

% --- Executes during object creation, after setting all properties.
function dre_dy_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in dre_shm.
function dre_shm_Callback(hObject, eventdata, handles)

% Hints: contents = cellstr(get(hObject,'String')) returns dre_shm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dre_shm

% --- Executes during object creation, after setting all properties.
function dre_shm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in dre_ehm.
function dre_ehm_Callback(hObject, eventdata, handles)

% Hints: contents = cellstr(get(hObject,'String')) returns dre_ehm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dre_ehm

% --- Executes during object creation, after setting all properties.
function dre_ehm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in dre_predict.
function dre_predict_Callback(hObject, eventdata, handles)
    
    % Get date numbers for baseline 
    yy=str2num(get(handles.dre_dy,'String'));
    handles.yy = yy;
    mm=str2num(get(handles.dre_dm,'String'));
    handles.mm = mm;
    dd=str2num(get(handles.dre_dd,'String'));
    handles.dd = dd;
    % Get start hour for baseline
    contents_shm = cellstr(get(handles.dre_shm,'String'));
    element_shm = contents_shm{get(handles.dre_shm,'Value')};
    sh=str2num(element_shm); % Start hour
    sm=0; % Start minute
    % Get end hour for baseline
    contents_ehm = cellstr(get(handles.dre_ehm,'String'));
    element_ehm = contents_ehm{get(handles.dre_ehm,'Value')};
    eh=str2num(element_ehm); % End hour
    em=0; % End minute
    
    check_start_date = datenum([yy,mm,dd,sh,sm,00]);
    handles.check_start_date = check_start_date; % Will be used also in DR Evaluation to check that the scheduling is defined within the baseline range
    check_end_date   = datenum([yy,mm,dd,eh,em,00]);
    handles.check_end_date = check_end_date; % Will be used also in DR Evaluation to check that the scheduling is defined within the baseline range
    start_date = handles.date13num(1);
    end_date   = handles.date13num(end);
    
    if sh >= eh
        
        errordlg('Start hour must be lower than end hour','Baseline hour error');
            
    elseif ( (check_start_date <= start_date) || (check_end_date >= end_date) )
        
        errordlg('The baseline date is out of the date vector','Baseline date error');
        
    else
            
        % Create Start Date and End Date to select baseline period
    %     baseline_sd=datenum([yy,mm,dd,sh,00,00]);
    %     baseline_ed=datenum([yy,mm,dd,eh,00,00]);
    %     % Baseline period selection
    %     
    %     check=0; % boolean variable we will use to check if we found the baseline start date in the date vector
    %     date_temp=handles.date13num; % Date temporary vector
    %     lc=length(date_temp);
    %     gap=3; % Random number greater than 2 to start the while cycle
    %     while ((gap > 2) && (check == 0)) % Binary search starting point
    %         lc = ceil(lc/2); % Temporary index variable we need to divide the date temporary vector in two parts
    %         if baseline_sd<date_temp(end-lc)
    %             date_temp=date_temp(1:end-lc);
    %             lc=length(date_temp);
    %         elseif baseline_sd>date_temp(end-lc)
    %             gap=numel(date_temp(end-lc:end)); % Number of points between data(lc) and the end of the date vector
    %         elseif baseline_sd==date_temp(end-lc)
    %             date_temp=date_temp(1:end-lc);
    %             check=1;
    %         else
    %             disp('Something went wrong');
    %             break;
    %         end
    %     end
    %     if check == 1 % If we found the desired date in the vector
    %         baseline_sd_index = numel(date_temp);
    %     else % If the desired date is between two close elements in the date vector
    %         baseline_sd_index = numel(date_temp)-1;
    %     end
    %     
    %     check=0; % boolean variable we will use to check if we found the baseline end date in the date vector
    %     date_temp=handles.date13num; % Date temporary vector
    %     lc=length(date_temp);
    %     gap=3; % Random number greater than 2 to start the while cycle
    %     while ((gap > 2) && (check == 0)) % Binary search starting point
    %         lc = ceil(lc/2); % Temporary index variable we need to divide the date temporary vector in two parts
    %         if baseline_ed<date_temp(end-lc)
    %             date_temp=date_temp(1:end-lc);
    %             lc=length(date_temp);
    %         elseif baseline_ed>date_temp(end-lc)
    %             gap=numel(date_temp(end-lc:end)); % Number of points between data(lc) and the end of the date vector
    %         elseif baseline_ed==date_temp(end-lc)
    %             date_temp=date_temp(1:end-lc);
    %             check=1;
    %         else
    %             disp('Something went wrong');
    %             break;
    %         end
    %     end
    %     % In this case the variable assigned is the same
    %     
    % %     if check == 1 % If we found the desired date in the vector
    % %         baseline_ed_index = numel(date_temp);
    % %     else % If the desired date is between two close elements in the date vector
    % %         baseline_ed_index = numel(date_temp);
    % %     end
    %     baseline_ed_index = numel(date_temp);

        date_temp_ref=handles.date13num; % Date temporary vector
        
        [baseline_sd_index,baseline_ed_index] = find_date_index(yy,mm,dd,sh,sm,eh,em,date_temp_ref);
        baseline_sd_index
        baseline_ed_index

        axes(handles.dre_plot);
        plot(NaN);
        time = handles.date13num(baseline_sd_index:baseline_ed_index);
        plot(time,handles.Ytest(baseline_sd_index:baseline_ed_index)/1e6);
        leg=char('Ground Truth');
        hold on;
        if get(handles.srt,'Value')
            plot(time,handles.Ypredict(baseline_sd_index:baseline_ed_index)/1e6);
            leg=char(leg,'Single Tree');
        end
        if get(handles.cvt,'Value')
            plot(time,handles.YpredictCV(baseline_sd_index:baseline_ed_index)/1e6);
            leg=char(leg,'CV Tree');
        end
        if get(handles.brt,'Value')
            plot(time,handles.YpredictBRT(baseline_sd_index:baseline_ed_index)/1e6);
            leg=char(leg,'BR Tree');
        end
        if get(handles.rf,'Value')
            plot(time,handles.YpredictRF(baseline_sd_index:baseline_ed_index)/1e6);
            leg=char(leg,'Random Forest');
        end
        if get(handles.mbt,'Value')
            plot(time,handles.YpredictMBT(baseline_sd_index:baseline_ed_index)/1e6);
            leg=char(leg,'MBR Tree');
        end
        hold off;
        datetick('x','HH:MM','keeplimits')
        legend(leg);

        handles.baseline_sd_index=baseline_sd_index;
        handles.baseline_ed_index=baseline_ed_index;
        handles.baseline_done = 1; % Used to have access to DR Evaluation tab because it is based on the baseline period.
                                   % It means that a period has been created
                                   
        guidata(hObject, handles); % needed to have handles available in the other functions
    end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                                                        DR EVALUATION                                                           %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   

function drev_sn_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sn_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function drev_des_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_des_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_spec_box.
function drev_spec_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_spec_box_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev_show_sp.
function drev_show_sp_Callback(hObject, eventdata, handles)
    
%     spec_list = cellstr(get(handles.drev_spec_box,'String'));
%     spec = spec_list{get(handles.drev_spec_box,'Value')};
    spec = get(handles.drev_spec_box,'Value');
    str_list = cellstr(get(handles.drev_str_box,'String'));
    str = str_list{get(handles.drev_str_box,'Value')};
    string = ['drev_strategy_' str];
    
    data=handles.(string){2+spec};
    
    % Reassigning data to plot
%     data=handles.(spec);
    time=handles.time_dre;
    axes(handles.drev_plot);
    plot(time,data);
    datetick('x','HH:MM','keeplimits')
    
% --- Executes on button press in drev_save_str.
function drev_save_str_Callback(hObject, eventdata, handles)
    
    if isempty(get(handles.drev_sn_box,'String')) % Check if strategy name field is non empty
        errordlg('Strategy name must be specified','Strategy name missing');
    else
        contents_str_box = cellstr(get(handles.drev_str_box,'String')); % Needed also in the "if check == 1"
        check = 1;
        for ii=1:numel(contents_str_box) % Check if the strategy name has already been used
            if strcmp(get(handles.drev_sn_box,'String'),contents_str_box(ii))
                check = 0;
                errordlg('A strategy with this name is already in the list','Strategy list error');
            end
        end

        if check == 1 % If the strategy name has not been used yet, then add the strategy to the list
            string = ['drev_strategy_' get(handles.drev_sn_box,'String')]; % Just the composition of the name
            handles.(string)={get(handles.drev_sn_box,'String') get(handles.drev_des_box,'String')};

            set(handles.drev_str_box,'String',[contents_str_box;get(handles.drev_sn_box,'String')]);
            len=length(contents_str_box);
            set(handles.drev_str_box,'Value',len+1);

            spec_list = cellstr(get(handles.drev_spec_box,'String'));
            for ii = 1:length(spec_list)
                handles.(string){ii+2} = handles.(spec_list{ii});
            end

            guidata(hObject, handles); % needed to have handles available in the other functions
        end
    end
 
% --- Executes on selection change in drev__str_box.
function drev_str_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_str_box_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev__show_str.
function drev_show_str_Callback(hObject, eventdata, handles)
    
    axes(handles.drev_plot);
    plot(NaN);
%     time = handles.date13num(handles.baseline_sd_index:handles.baseline_ed_index);
%     str_list = cellstr(get(handles.drev_str_box,'String'));
%     str = str_list{get(handles.drev_str_box,'Value')};
%     string = ['drev_strategy_' str];
%     plot_string = ['Ypredict_' string];
%     plot(time,handles.(plot_string)/1e6);
%     leg=char('');
    axis normal
    
    str_list = cellstr(get(handles.drev_str_box,'String'));
    str = str_list{get(handles.drev_str_box,'Value')};
    string = ['drev_strategy_' str];

        hold on;
%         if get(handles.srt,'Value')
            plot_string = ['Ypredict_' string];
            plot(handles.time_drev,handles.(plot_string)/1e6);
%             leg=char('Single Tree');
%         end
%         if get(handles.cvt,'Value')
            plot_string = ['YpredictCV_' string];
            plot(handles.time_drev,handles.(plot_string)/1e6);
%             leg=char(leg,'CV Tree');
%         end
%         if get(handles.brt,'Value')
%             plot_string = ['YpredictBRT_' string];
%             plot(handles.time_drev,handles.(plot_string)/1e6);
%             leg=char(leg,'BR Tree');
%         end
%         if get(handles.rf,'Value')
            plot_string = ['YpredictRF_' string];
            plot(handles.time_drev,handles.(plot_string)/1e6);
%             leg=char(leg,'Random Forest');
%         end
%         if get(handles.mbt,'Value')
%             plot_string = ['YpredictMBT_' string];
%             plot(handles.time_drev,handles.(plot_string)/1e6);
%             leg=char(leg,'MBR Tree');
%         end
        hold off;
        datetick('x','HH:MM','keeplimits')
        legend('Single Tree','CV Tree','Random Forest')
%         legend(leg);
        
% --- Executes on button press in drev_del_str.
function drev_del_str_Callback(hObject, eventdata, handles)
    
    string_pos = get(handles.drev_str_box,'Value'); % Position in the list of the string to delete
    contents_str_box = cellstr(get(handles.drev_str_box,'String'));
    string = ['drev_strategy_' contents_str_box{string_pos}]; % Name of the string to delete
    
    % CLEAR HANDLES VARIABLES HAS TO BE IMPLEMENTED. FOR THE MOMENT WE SIMPLY REMOVE IT FROM STRATEGY LIST
    
%     clear handles.(string)
%     delete(handles.(string)); % Delete the handles corresponding to the string to delete

    contents_str_box(string_pos) = []; % Remove the strategy form the strategy list
    set(handles.drev_str_box,'String',[contents_str_box]);
    len=length(contents_str_box);
    set(handles.drev_str_box,'Value',len);

% --- Executes on selection change in drev_sh_hh.
function drev_sh_hh_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sh_hh_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_sh_mm.
function drev_sh_mm_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sh_mm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_eh_hh.
function drev_eh_hh_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_eh_hh_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_eh_mm.
function drev_eh_mm_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_eh_mm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function drev_val_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_val_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev_enter.
function drev_enter_Callback(hObject, eventdata, handles)
    
    % Get date numbers for setpoints 
    yy = handles.yy;
    mm = handles.mm;
    dd = handles.dd;
    % Get start hour for setpoints
    contents_sh = cellstr(get(handles.drev_sh_hh,'String'));
    element_sh = contents_sh{get(handles.drev_sh_hh,'Value')};
    sh=str2num(element_sh);
    % Get start minute for setpoints
    contents_sm = cellstr(get(handles.drev_sh_mm,'String'));
    element_sm = contents_sm{get(handles.drev_sh_mm,'Value')};
    sm=str2num(element_sm);
    % Get end hour for setpoints
    contents_eh = cellstr(get(handles.drev_eh_hh,'String'));
    element_eh = contents_eh{get(handles.drev_eh_hh,'Value')};
    eh=str2num(element_eh);
    % Get end minute for setpoints
    contents_em = cellstr(get(handles.drev_eh_mm,'String'));
    element_em = contents_em{get(handles.drev_eh_mm,'Value')};
    em=str2num(element_em);
    
    strategy_start_date = datenum([yy,mm,dd,sh,sm,00]); % To check if the strategy period is within the baseline periode
    strategy_end_date   = datenum([yy,mm,dd,eh,em,00]);
    
    if strategy_start_date > strategy_end_date
        
        errordlg('The start hour must be lower than the end hour','Strategy period error');
        
    elseif ( (strategy_start_date < handles.check_start_date) || (strategy_end_date > handles.check_end_date) )
        
        errordlg('The strategy period is out of the baseline period','Strategy period error');
                
    else
    
        date_temp_ref=handles.time_dre; % Date temporary vector
        [setpoint_sd_index,setpoint_ed_index] = find_date_index(yy,mm,dd,sh,sm,eh,em,date_temp_ref);

        spec_list = cellstr(get(handles.drev_spec_box,'String'));
        spec = spec_list{get(handles.drev_spec_box,'Value')};
        temp=handles.(spec);
        temp(setpoint_sd_index:setpoint_ed_index) = str2num(get(handles.drev_val_box,'String'));
        handles.(spec) = temp;


        axes(handles.drev_plot);
        plot(date_temp_ref,handles.(spec));
        datetick('x','HH:MM','keeplimits')

        guidata(hObject, handles);
    end

% --- Executes on button press in drev_run.
function drev_run_Callback(hObject, eventdata, handles)
    %% CAMBIARE NOME AGLI HANDLES PER NON CONFONDERLI CON QUELLI DEL MODEL IDENTIFICATION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    str_list = cellstr(get(handles.drev_str_box,'String'));
    str = str_list{get(handles.drev_str_box,'Value')};
    
    for ii = 1:length(str_list)
        
        str = str_list{ii};
        
        %% Prepare Training data, i.e from 2012


    %     st='Preparing data..';
    %     contents_console = cellstr(get(handles.console,'String'));
    %     set(handles.console,'String',[contents_console;st]);
    %     len=length(contents_console);
    %     set(handles.console,'Value',len+1);

      % Column names and indicies of the columns which are categorical

%         st='Done.';
%         contents_console = cellstr(get(handles.console,'String'));
%         set(handles.console,'String',[contents_console;st]);
%         len=length(contents_console);
%         set(handles.console,'Value',len+1);

            % Now prepare testing data, i.e from 2013.
%             st='Evaluating on 2013 Testing Data';
%             contents_console = cellstr(get(handles.console,'String'));
%             set(handles.console,'String',[contents_console;st]);
%             len=length(contents_console);
%             set(handles.console,'Value',len+1);


            load dateJul16.mat
            
            load largetree12.mat
            load largetreeCV.mat
            load model.mat
            load mdl.mat
            load B.mat
            
            % Get date numbers for baseline 
            yy = handles.yy;
            mm = handles.mm;
            dd = handles.dd;
            % Get start hour for baseline
            contents_shm = cellstr(get(handles.dre_shm,'String'));
            element_shm = contents_shm{get(handles.dre_shm,'Value')};
            sh=str2num(element_shm);
            % Get end hour for baseline
            contents_ehm = cellstr(get(handles.dre_ehm,'String'));
            element_ehm = contents_ehm{get(handles.dre_ehm,'Value')};
            eh=str2num(element_ehm);

            sm=0;
            em=0;

            date_temp_ref=dateJul16; % Date temporary vector
            [drev_sd_index,drev_ed_index] = find_date_index(yy,mm,dd,sh,sm,eh,em,date_temp_ref);
            
            time_drev = dateJul16(drev_sd_index:drev_ed_index);
            handles.time_drev = time_drev;

                
                % Feature matrix with all 34 features as columns
                
                string = ['drev_strategy_' str];
                
                chwsetp = handles.(string){5};
                clgsetp = handles.(string){3};
                htgsetp = handles.(string){4};
                hwsetp  = handles.(string){6};
                
                load jul16.mat
                Xtest = [BASEMENTZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        HEATSYS1BOILERBoilerOutletTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        COOLSYS1CHILLER1ChillerEvaporatorOutletTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        COOLSYS1CHILLER2ChillerEvaporatorOutletTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        chwsetp,...   % CWLOOPTEMPSCHEDULEScheduleValueTimeStep1(drev_sd_index:drev_ed_index),...
                        clgsetp,...   % CLGSETP_SCHScheduleValueTimeStep1(drev_sd_index:drev_ed_index),...
                        CORE_BOTTOMZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        CORE_MIDZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        CORE_TOPZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        EMScurrentDayOfMonthTimeStep1(drev_sd_index:drev_ed_index),...
                        EMScurrentDayOfWeekTimeStep1(drev_sd_index:drev_ed_index),...
                        GROUNDFLOOR_PLENUMZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        htgsetp,...   % HTGSETP_SCHScheduleValueTimeStep1(drev_sd_index:drev_ed_index),...
                        hwsetp,...    % HWLOOPTEMPSCHEDULEScheduleValueTimeStep1(drev_sd_index:drev_ed_index),...
                        MIDFLOOR_PLENUMZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        EnvironmentSiteOutdoorAirDrybulbTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        EnvironmentSiteOutdoorAirRelativeHumidityTimeStep1(drev_sd_index:drev_ed_index),...
                        EnvironmentSiteOutdoorAirWetbulbTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        PERIMETER_BOT_ZN_1ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        PERIMETER_BOT_ZN_2ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_BOT_ZN_3ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_BOT_ZN_4ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_MID_ZN_1ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_MID_ZN_2ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_MID_ZN_3ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_MID_ZN_4ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_TOP_ZN_1ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_TOP_ZN_2ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_TOP_ZN_3ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...                   
                        PERIMETER_TOP_ZN_4ZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),... 
                        EMScurrentTimeOfDayTimeStep1(drev_sd_index:drev_ed_index),...
                        TOPFLOOR_PLENUMZoneAirTemperatureCTimeStep1(drev_sd_index:drev_ed_index),...
                        EnvironmentSiteWindDirectiondegTimeStep1(drev_sd_index:drev_ed_index),...
                        EnvironmentSiteWindSpeedmsTimeStep1(drev_sd_index:drev_ed_index)];

%                 Xtest(1,:)=[]; % To insert if you want to remove the first item of the vector that is a name

%         st='Done.';
%         contents_console = cellstr(get(handles.console,'String'));
%         set(handles.console,'String',[contents_console;st]);
%         len=length(contents_console);
%         set(handles.console,'Value',len+1);


        if get(handles.srt,'Value')
            % Start Tree Regression
            st='Learning Regression Tree on 2012 Annual Data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            % Ontain Predictions for the entire year and for just july
            Ypredict = predict(largetree12,Xtest);
            string_predict = ['Ypredict_' string];
            handles.(string_predict)=Ypredict;

            st='Single Regression Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.cvt,'Value')
            % Improve the tree by using k-fold cross validation
            st='Learning a cross validated tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            kf=str2num(get(handles.cvt_k_box,'String'))
            YpredictCVk=zeros(size(Xtest,1),kf);
            for ii=1:kf
                YpredictCVk(:,ii)=predict(largetreeCV.Trained{ii,1},Xtest);
            end
            YpredictCV = sum(YpredictCVk,2)/kf;
            
            string_predict = ['YpredictCV_' string];
            handles.(string_predict) = YpredictCV;

            st='Cross-Validation Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.brt,'Value')
            % Boosted Regression trees

            st='Learning a boosted regression tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            Ypreden = predict(mdl,Xtest);
            string_predict = ['YpredictBRT_' string];
            handles.(string_predict) = Ypreden;
 
            st='Boosted Regression Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.rf,'Value')

            st='Learning a random forest for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

             Ybag = predict(B,Xtest);
            string_predict = ['YpredictRF_' string];
            handles.(string_predict) = Ybag;

            st='Random Forest training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end


        if get(handles.mbt,'Value')
            % Model Based RT

            st='Learning a model based random tree for 2012 annual data';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);

            Ypredm5 = m5ppredict(model,Xtest);
            string_predict = ['YpredictMBT_' string];
            handles.(string_predict) = Ypredm5;
            
            st='Model Based Random Tree training and testing process complete!';
            contents_console = cellstr(get(handles.console,'String'));
            set(handles.console,'String',[contents_console;st]);
            len=length(contents_console);
            set(handles.console,'Value',len+1);
        end
        
        guidata(hObject,handles);
    end




