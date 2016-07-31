* ModulationInputBodePlot.cvs: transfer function of modulation input
* 18[A-Z].asc - JQI Piezo, 18V output unloaded
* 50[A-Z].asc - JQI Piezo, 50V output unloaded
* 100[A-Z].asc - JQI Piezo, 100V output unloaded
* 100P[A-Z].asc - JQI Piezo, 100V output with 700nF pzt load
* 100T[A-Z].asc - Thorlabs Piezo, 100V output unloaded

* BG-LPF-[A-Z].asc - instrument noise floor; through high pass filter but piezo disconnected.


* BG-DA-[A-Z]*.asc - differential amplifier background noise floor (gain = 1, AC coupled inputs)
* PZ100C-[A-Z].asc - PDu150 at 100V, measured across differential amplifier, 700nF pzt load
* PZ100-[A-Z].asc - PDu150 at 100V, across differential amplifier, unloaded


Folders:

50, 100, 200V_FFT -- Residual ripple from DRV2700, as measured at the output of U2.

Other raw data files (which are large, thus figured won't stick on github) can be found at https://drive.google.com/folderview?id=0B-YaJoP0pshJbmpWTG5tNWlFVUk

The 'data' dir, however, contains downsampled versions suitable for plotting in the paper.