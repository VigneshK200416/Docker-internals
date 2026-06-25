
SIGNALS:

Signals are messages sent to processes by the kernel or other processes.
They are used to interrupt, terminate, pause, or control execution.
Processes can trap signals to handle them gracefully instead of using default


| **[Signal](ca://s?q=Linux_signal_SIGTERM)** | **Number** | **Default Action** | **Usage** |
| --- | --- | --- | --- |
| **[SIGTERM](ca://s?q=Linux_signal_SIGTERM)** | 15 | Terminate | Polite stop request; can be trapped. |
| **[SIGINT](ca://s?q=Linux_signal_SIGINT)** | 2 | Terminate | Sent by Ctrl+C in terminal. |
| **[SIGQUIT](ca://s?q=Linux_signal_SIGQUIT)** | 3 | Terminate + Core Dump | Sent by Ctrl+\\\\, useful for debugging. |
| **[SIGKILL](ca://s?q=Linux_signal_SIGKILL)** | 9 | Terminate immediately | Cannot be trapped or ignored. |
| **[SIGHUP](ca://s?q=Linux_signal_SIGHUP)** | 1 | Terminate | Hangup; often reloads configs for daemons. |
| **[SIGSTOP](ca://s?q=Linux_signal_SIGSTOP)** | 19 | Stop process | Pauses execution; cannot be trapped. |
| **[SIGCONT](ca://s?q=Linux_signal_SIGCONT)** | 18 | Continue | Resumes a stopped process. |
| **[SIGUSR1](ca://s?q=Linux_signal_SIGUSR1)** | 10 | User-defined | Custom application-specific use. |
| **[SIGUSR2](ca://s?q=Linux_signal_SIGUSR2)** | 12 | User-defined | Another custom signal. |lt actions.


some useful commands:

kill -l   #to list all signals
kill -TERM <pid>   # send SIGTERM
kill -INT <pid>    # send SIGINT
kill -9 <pid>      # send SIGKILL

In scripts, 
we use trap to catch signals and run custom actions instead of letting the process die immediately.
