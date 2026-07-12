.class public Ldev/ukanth/ufirewall/log/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# instance fields
.field command:[Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public exitval:I

.field process:Ljava/lang/Process;

.field rt:Ljava/lang/Runtime;

.field stdout:Ljava/io/BufferedReader;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->tag:Ljava/lang/String;

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->command:[Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->rt:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/log/ShellCommand;-><init>([Ljava/lang/String;)V

    iput-object p2, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkForExit()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    iput v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->exitval:I

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->finish()V

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception finishing ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AFWall"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->process:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->process:Ljava/lang/Process;

    return-void
.end method

.method public readStdout()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;

    .line 149
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 153
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AFWall"

    const-string v3, "readStdout error"

    .line 159
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public readStdoutBlocking()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AFWall"

    const-string v3, "readStdoutBlocking error"

    .line 131
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public start(Z)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->exitval:I

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->error:Ljava/lang/String;

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->command:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->process:Ljava/lang/Process;

    .line 58
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->waitForExit()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->error:Ljava/lang/String;

    return-void
.end method

.method public stdoutAvailable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->stdout:Ljava/io/BufferedReader;

    .line 116
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "stdoutAvailable error"

    .line 118
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public waitForExit()V
    .locals 3

    .line 70
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->checkForExit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->stdoutAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellCommand waitForExit ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/ShellCommand;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] discarding read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/ShellCommand;->readStdout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWALL"

    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 76
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "waitForExit"

    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method
