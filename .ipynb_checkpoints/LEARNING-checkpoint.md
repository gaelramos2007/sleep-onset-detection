STEPS:

Loading data:
- Open dataset
- Printing dataset information
- Power Spectral Density (PSD) test:
    raw.compute_psd(fmax=50).plot(picks="data", exclude="bads", amplitude=False)
    raw.plot(duration=5, n_channels=30) - This 
    - These commands use .compute and .plot, in this case, .compute sets a limit for a maximum of 50 PSD, while .plot normally is interactive and can fit different parameters inside it
 
Preprocessing:
Use of techniques to remove undesired components and filter data before processing it

Detecting experimental events:
Used for making dictionaries and finding the moment something happens

Epoching continuous data:
Uses Epochs to cut data and plot

Time-frequency analysis:
"time-frequency representations, power spectral density, and cross-spectral density". how much of each frequency there is moment by moment

Estimating evoked responses:
Averaging and comparing different epochs with several plot types

Inverse modeling:
Estimating where inside the brain the activity came from using MRI (not needed for my project)

General idea:
load, clean, cut into epochs, measure(spectrum), compare




Terms to learn:
**- MNE Python:** brain-signal analysis library
**- PSD:** How much power the signal has at each frequency
**- EEG (GFP?):** Brain voltages measured on the scalp
- Gradiometers (RMS?)
- Magnetometers (RMS?)
- MEG: Brain magnetic field instead of voltages
- ICA: Splits signal into independent sources, delete the ones that are blinks or heartbeats
- Segment image and ERP/EFP, Spectrum, Dropped Segments: Segment image is every epoch drawn as one row of a colored picture, spectrum is similar to PSD, dropped segments are epochs thrown out for being too noisy
- **"Exclude" parameter:** tells a function to leave certain channels or components out
- Preprocessing approaches and techniques (Maxwell filtering, signal-space projection, independent components analysis, filtering, downsampling, etc)
- **Filtering, downsampling:** Removing unwanted frequencies, storing fewer samples per second
- **event dictionary** (when extracting epochs from continuous data) and **rejection dictionary**: Readable names for event codes; limits how big a signal may be before an epoch is thrown out as a noice



Commands to learn:
- **~mne.io.Raw:** object that holds a continuous recording
- **.compute:** computes things like spectrum
- **np.arrange(7,30,3)**: makes evenly spaced numbers used as frequencies to analyse
- **.plot** (picks, exclude, amplitude, duration, n_channels): draws whatever object that is called
**- mne.preprocessing and mne.filter submodules**: toolboxes for cleaning and filtering
**- ica.fit, ica.exclude, ica.plot_properties**: fit ICA, choose components to remove, and inspect them
**- mne.find_events**: finds event times from the trigger channel
**- ~mne.viz.plot_events**: plots when events happened
**- ~mne.Info(raw.info):** recording's details (channels, sampling rate)
- **mne.make_fixed_length_events**: makes evenly spaced events
**- ~mne.Epochs**: cuts the recording into epochs
- **preload=True**: lods data into memory now instead of reading it from disk later
**- ~mne.Epochs.equalize_event_counts**: evens out epoch numbers across conditions
- ~mne.Epochs.plot_image
- **~mne.Epochs.get_data**: gives epochs as plain numbers for machine learning
- **mne.time_frequency**: toolbox for time-frequency analysis
- **~mne.Epochs.average**: averages the epochs into an evoked response