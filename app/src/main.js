let running = true;
let delay = 1000;

let onQuit = () =>
{
    running = false;
};

process.on('SIGINT', onQuit);
process.on('SIGTERM', onQuit);
process.on('SIG', onQuit)

let run = () =>
{
    if(!running)
    {
        process.exit();
        return;
    }
        

    console.log(`this code is run every ${delay}ms.`);

    setTimeout(() =>
    {
        run();
    }, delay);
};
run();
