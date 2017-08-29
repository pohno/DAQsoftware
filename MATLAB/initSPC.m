% initiliaze communications with the SRS single photon counter

% port = COM1 on Hurricane computer

function sSPC = initSPC(port)

global photonCounter

if photonCounter == 0
    sSPC = serial(port);
    set(sSPC,'BaudRate',19200,'StopBits',2,'DataBits',8);
    fopen(sSPM);
    photonCounter = 1;
end

end