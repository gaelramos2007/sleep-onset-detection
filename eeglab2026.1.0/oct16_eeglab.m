eeglab
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','eeglab_data.set','filepath','/Users/gaelrc/Desktop/EEG Project/eeglab2026.1.0/sample_data/');
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_eegfiltnew(EEG, 'locutoff',1,'hicutoff',40,'plotfreqz',1);
EEG = pop_eegfiltnew(EEG, 'locutoff',8,'hicutoff',12,'plotfreqz',1);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','EEG Data 8-12Hz','gui','off'); 
figure; pop_spectopo(EEG, 1, [0      238304.6875], 'EEG' , 'freq', [6 10 22], 'freqrange',[2 30],'electrodes','off');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'retrieve',1,'study',0); 
pop_eegplot( EEG, 1, 1, 1);
figure; pop_spectopo(EEG, 1, [0      238304.6875], 'EEG' , 'freq', [2 14 20], 'freqrange',[2 30],'electrodes','off');
figure; pop_spectopo(EEG, 1, [0      238304.6875], 'EEG' , 'freq', [4 10 20], 'freqrange',[2 30],'electrodes','off');