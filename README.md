Powershell Empire in Docker
===========================

## Introduction ##

Empire is a post-exploitation framework that includes a pure-PowerShell2.0 Windows agent, and a pure Python 2.6/2.7 Linux/OS X agent.

It is the merge of the previous PowerShell Empire and Python EmPyre projects.

The framework offers cryptologically-secure communications and a flexible architecture.

On the PowerShell side, Empire implements the ability to run PowerShell agents without needing powershell.exe, rapidly deployable post-exploitation modules ranging from key loggers to Mimikatz, and adaptable communications to evade network detection, all wrapped up in a usability-focused framework.

PowerShell Empire premiered at [BSidesLV in 2015](https://www.youtube.com/watch?v=Pq9t59w0mUI) and Python EmPyre premeiered at HackMiami 2016.

Here's a [quickstart](http://www.powershellempire.com/?page_id=110) and [full documentation](http://www.powershellempire.com/?page_id=83).


## Installation ##

Clone the project:

```bash
git clone https://gitlab.com/Creased/docker-powershell-empire empire/
cd empire/

```

Preapre container:

```bash
docker-compose build

```

Start container:

```bash
docker-compose up -d

```

Attach to container:

```bash
docker-compose exec empire bash

```

Reset databases (and certs):

```bash
screen -S empire -L -Logfile /root/empire/data/empire.log
./setup/reset.sh
exit
y

```

## Configuration ##

Start a new empire:

```bash
./empire

```

Setup listener:

```bash
listeners
uselistener http
set Host http://vps2.bmoine.fr:8080
set Port 8080
execute
launcher powershell

```

Detach from screen using `CTRL`+`A``D`.

Escape from container:

```bash
exit

```

Re-start container:

```bash
docker-compose down
docker-compose up -d

```

Display logs:

```bash
docker-compose logs -f

```

Attach to the container:

```bash
docker-compose exec empire bash

```

Attach to the screen:

```bash
screen -r empire

```

Voilà!

