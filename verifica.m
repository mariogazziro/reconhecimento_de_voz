    clear all; close all; clc;  

    %%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Define variables
    Tw = 25;                % analysis frame duration (ms)
    Ts = 10;                % analysis frame shift (ms)
    alpha = 0.97;           % preemphasis coefficient
    M = 20;                 % number of filterbank channels 
    C = 12;                 % number of cepstral coefficients
    L = 22;                 % cepstral sine lifter parameter
    LF = 300;               % lower frequency limit (Hz)
    HF = 3700;              % upper frequency limit (Hz)
    wav_file = 'imitador_youtube.wav';  % input audio filename


    % Read speech samples, sampling rate and precision from file
    [ audioIn, fs] = audioread( wav_file );


    % Feature extraction (feature vectors as columns)
    [ MFCCs, FBEs, frames ] = ...
                    mfcc( audioIn, fs, Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L );


    % Generate data needed for plotting 
    [ Nw, NF ] = size( frames );                % frame length and number of frames
    time_frames = [0:NF-1]*Ts*0.001+0.5*Nw/fs;  % time vector (s) for frames 
    time = [ 0:length(audioIn)-1 ]/fs;           % time vector (s) for signal samples 
    logFBEs = 20*log10( FBEs );                 % compute log FBEs for plotting
    logFBEs_floor = max(logFBEs(:))-50;         % get logFBE floor 50 dB below max
    logFBEs( logFBEs<logFBEs_floor ) = logFBEs_floor; % limit logFBE dynamic range

    % Generate plots
    figure('Position', [30 30 800 600], 'PaperPositionMode', 'auto', ... 
              'color', 'w', 'PaperOrientation', 'landscape', 'Visible', 'on' ); 

    subplot( 211 );
    plot( time, audioIn, 'b' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Amplitude' ); 
    title( 'Imitação de Marcelo Adnet (youtube)'); 

    subplot( 212 );
    imagesc( time_frames, [1:C], MFCCs(2:end,:) ); % HTK's TARGETKIND: MFCC
    axis( 'xy' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Cepstrum' );
    title( 'Coeficientes cepstrum nas frequências Mel' );

    % Set color map to grayscale
    colormap( 1-colormap('jet') ); 
    
    imitador=MFCCs(2:13,[1:600])';
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Define variables
    Tw = 25;                % analysis frame duration (ms)
    Ts = 10;                % analysis frame shift (ms)
    alpha = 0.97;           % preemphasis coefficient
    M = 20;                 % number of filterbank channels 
    C = 12;                 % number of cepstral coefficients
    L = 22;                 % cepstral sine lifter parameter
    LF = 300;               % lower frequency limit (Hz)
    HF = 3700;              % upper frequency limit (Hz)
    wav_file = 'original_21_09_2018.wav';  % input audio filename

    % Read speech samples, sampling rate and precision from file
    [ audioIn, fs] = audioread( wav_file );

    % Feature extraction (feature vectors as columns)
    [ MFCCs, FBEs, frames ] = ...
                    mfcc( audioIn, fs, Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L );

    % Generate data needed for plotting 
    [ Nw, NF ] = size( frames );                % frame length and number of frames
    time_frames = [0:NF-1]*Ts*0.001+0.5*Nw/fs;  % time vector (s) for frames 
    time = [ 0:length(audioIn)-1 ]/fs;           % time vector (s) for signal samples 
    logFBEs = 20*log10( FBEs );                 % compute log FBEs for plotting
    logFBEs_floor = max(logFBEs(:))-50;         % get logFBE floor 50 dB below max
    logFBEs( logFBEs<logFBEs_floor ) = logFBEs_floor; % limit logFBE dynamic range

    % Generate plots
    figure('Position', [30 30 800 600], 'PaperPositionMode', 'auto', ... 
              'color', 'w', 'PaperOrientation', 'landscape', 'Visible', 'on' ); 

    subplot( 211 );
    plot( time, audioIn, 'b' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Amplitude' ); 
    title( 'Voz original de Jair Bolsonaro (youtube 21/09/18)'); 

    subplot( 212 );
    imagesc( time_frames, [1:C], MFCCs(2:end,:) ); % HTK's TARGETKIND: MFCC
    axis( 'xy' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Cepstrum' );
    title( 'Coeficientes cepstrum nas frequências Mel' );

    % Set color map to grayscale
    colormap( 1-colormap('jet') ); 
    
    original=MFCCs(2:13,[1:600])';
    
  
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   
    % Define variables
    Tw = 25;                % analysis frame duration (ms)
    Ts = 10;                % analysis frame shift (ms)
    alpha = 0.97;           % preemphasis coefficient
    M = 20;                 % number of filterbank channels 
    C = 12;                 % number of cepstral coefficients
    L = 22;                 % cepstral sine lifter parameter
    LF = 300;               % lower frequency limit (Hz)
    HF = 3700;              % upper frequency limit (Hz)
    wav_file = 'amostra_18_09_2018.wav';  % input audio filename


    % Read speech samples, sampling rate and precision from file
    [ audioIn, fs] = audioread( wav_file );


    % Feature extraction (feature vectors as columns)
    [ MFCCs, FBEs, frames ] = ...
                    mfcc( audioIn, fs, Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L );


    % Generate data needed for plotting 
    [ Nw, NF ] = size( frames );                % frame length and number of frames
    time_frames = [0:NF-1]*Ts*0.001+0.5*Nw/fs;  % time vector (s) for frames 
    time = [ 0:length(audioIn)-1 ]/fs;           % time vector (s) for signal samples 
    logFBEs = 20*log10( FBEs );                 % compute log FBEs for plotting
    logFBEs_floor = max(logFBEs(:))-50;         % get logFBE floor 50 dB below max
    logFBEs( logFBEs<logFBEs_floor ) = logFBEs_floor; % limit logFBE dynamic range

    % Generate plots
    figure('Position', [30 30 800 600], 'PaperPositionMode', 'auto', ... 
              'color', 'w', 'PaperOrientation', 'landscape', 'Visible', 'on' ); 

    subplot( 211 );
    plot( time, audioIn, 'b' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Amplitude' ); 
    title( 'Suposto áudio gravado no hospital, circulando no Whatsapp desde 18/09/18'); 

    subplot( 212 );
    imagesc( time_frames, [1:C], MFCCs(2:end,:) ); % HTK's TARGETKIND: MFCC
    axis( 'xy' );
    xlim( [ min(time_frames) max(time_frames) ] );
    xlabel( 'Tempo (s)' ); 
    ylabel( 'Cepstrum' );
    title( 'Coeficientes cepstrum nas frequências Mel' );

    % Set color map to grayscale
    colormap( 1-colormap('jet') ); 
    
    amostra=MFCCs(2:13,[1:600])';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    X=[imitador;original];
    Y(1:600)="Imitador";
    Y(601:1200)="Original";
    Y=Y';
    mdl = fitcknn(X,Y,'NumNeighbors',12,'Standardize',1);

    rloss = resubLoss(mdl)   % The classifier predicts incorrectly for XX% of the training data.  3,08%

    [label,score,cost] = predict(mdl,amostra)
    
    mean(score(:,1))
    
    mean(score(:,2))
