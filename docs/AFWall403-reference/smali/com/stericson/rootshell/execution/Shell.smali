.class public Lcom/stericson/rootshell/execution/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/rootshell/execution/Shell$ShellType;,
        Lcom/stericson/rootshell/execution/Shell$ShellContext;,
        Lcom/stericson/rootshell/execution/Shell$Worker;
    }
.end annotation


# static fields
.field private static customShell:Lcom/stericson/rootshell/execution/Shell; = null

.field public static defaultContext:Lcom/stericson/rootshell/execution/Shell$ShellContext; = null

.field private static rootShell:Lcom/stericson/rootshell/execution/Shell; = null

.field private static shell:Lcom/stericson/rootshell/execution/Shell; = null

.field private static final suVersion:[Ljava/lang/String;

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stericson/rootshell/execution/Command;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private final errorStream:Ljava/io/BufferedReader;

.field private final input:Ljava/lang/Runnable;

.field private final inputStream:Ljava/io/BufferedReader;

.field private isCleaning:Z

.field public isClosed:Z

.field public isExecuting:Z

.field public isReading:Z

.field private isSELinuxEnforcing:Ljava/lang/Boolean;

.field private final maxCommands:I

.field private final output:Ljava/lang/Runnable;

.field private final outputStream:Ljava/io/OutputStreamWriter;

.field private final proc:Ljava/lang/Process;

.field private read:I

.field private shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

.field private shellTimeout:I

.field private shellType:Lcom/stericson/rootshell/execution/Shell$ShellType;

.field private totalExecuted:I

.field private totalRead:I

.field private write:I


# direct methods
.method static bridge synthetic -$$Nest$fgetclose(Lcom/stericson/rootshell/execution/Shell;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/stericson/rootshell/execution/Shell;->close:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->inputStream:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproc(Lcom/stericson/rootshell/execution/Shell;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetread(Lcom/stericson/rootshell/execution/Shell;)I
    .locals 0

    iget p0, p0, Lcom/stericson/rootshell/execution/Shell;->read:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshellContext(Lcom/stericson/rootshell/execution/Shell;)Lcom/stericson/rootshell/execution/Shell$ShellContext;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalExecuted(Lcom/stericson/rootshell/execution/Shell;)I
    .locals 0

    iget p0, p0, Lcom/stericson/rootshell/execution/Shell;->totalExecuted:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettotalRead(Lcom/stericson/rootshell/execution/Shell;)I
    .locals 0

    iget p0, p0, Lcom/stericson/rootshell/execution/Shell;->totalRead:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I
    .locals 0

    iget p0, p0, Lcom/stericson/rootshell/execution/Shell;->write:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputerror(Lcom/stericson/rootshell/execution/Shell;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->error:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputread(Lcom/stericson/rootshell/execution/Shell;I)V
    .locals 0

    iput p1, p0, Lcom/stericson/rootshell/execution/Shell;->read:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtotalExecuted(Lcom/stericson/rootshell/execution/Shell;I)V
    .locals 0

    iput p1, p0, Lcom/stericson/rootshell/execution/Shell;->totalExecuted:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtotalRead(Lcom/stericson/rootshell/execution/Shell;I)V
    .locals 0

    iput p1, p0, Lcom/stericson/rootshell/execution/Shell;->totalRead:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwrite(Lcom/stericson/rootshell/execution/Shell;I)V
    .locals 0

    iput p1, p0, Lcom/stericson/rootshell/execution/Shell;->write:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanCommands(Lcom/stericson/rootshell/execution/Shell;)V
    .locals 0

    invoke-direct {p0}, Lcom/stericson/rootshell/execution/Shell;->cleanCommands()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseQuietly(Lcom/stericson/rootshell/execution/Shell;Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseQuietly(Lcom/stericson/rootshell/execution/Shell;Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stericson/rootshell/execution/Shell;->suVersion:[Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    sput-object v0, Lcom/stericson/rootshell/execution/Shell;->defaultContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/stericson/rootshell/execution/Shell$ShellType;Lcom/stericson/rootshell/execution/Shell$ShellContext;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x61a8

    iput v0, p0, Lcom/stericson/rootshell/execution/Shell;->shellTimeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->shellType:Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 97
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const-string v1, ""

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Shell;->error:Ljava/lang/String;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->close:Z

    iput-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->isReading:Z

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->isClosed:Z

    const/16 v2, 0x1388

    iput v2, p0, Lcom/stericson/rootshell/execution/Shell;->maxCommands:I

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->read:I

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->write:I

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->totalExecuted:I

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->totalRead:I

    iput-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->isCleaning:Z

    .line 553
    new-instance v2, Lcom/stericson/rootshell/execution/Shell$1;

    invoke-direct {v2, p0}, Lcom/stericson/rootshell/execution/Shell$1;-><init>(Lcom/stericson/rootshell/execution/Shell;)V

    iput-object v2, p0, Lcom/stericson/rootshell/execution/Shell;->input:Ljava/lang/Runnable;

    .line 646
    new-instance v3, Lcom/stericson/rootshell/execution/Shell$3;

    invoke-direct {v3, p0}, Lcom/stericson/rootshell/execution/Shell$3;-><init>(Lcom/stericson/rootshell/execution/Shell;)V

    iput-object v3, p0, Lcom/stericson/rootshell/execution/Shell;->output:Ljava/lang/Runnable;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting shell: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Context: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/stericson/rootshell/execution/Shell$ShellContext;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timeout: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->shellType:Lcom/stericson/rootshell/execution/Shell$ShellType;

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/stericson/rootshell/execution/Shell;->shellTimeout:I

    :goto_0
    iput p4, p0, Lcom/stericson/rootshell/execution/Shell;->shellTimeout:I

    iput-object p3, p0, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 144
    sget-object p2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    if-ne p3, p2, :cond_1

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    goto/16 :goto_2

    .line 147
    :cond_1
    invoke-direct {p0, v1}, Lcom/stericson/rootshell/execution/Shell;->getSuVersion(Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 148
    invoke-direct {p0, p3}, Lcom/stericson/rootshell/execution/Shell;->getSuVersion(Z)Ljava/lang/String;

    move-result-object p3

    .line 152
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing()Z

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const-string p4, "SUPERSU"

    .line 155
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/16 v1, 0xbe

    if-lt p4, v1, :cond_2

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --context "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Shell$ShellContext;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p4, "Su binary --context switch not supported!"

    .line 159
    invoke-static {p4}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 160
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Su binary display version: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Su binary internal version: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SELinuxEnforcing: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 165
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    .line 169
    :goto_2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    iget-object p3, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {p3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->inputStream:Ljava/io/BufferedReader;

    .line 170
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    iget-object p3, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {p3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 171
    new-instance p1, Ljava/io/OutputStreamWriter;

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    .line 176
    new-instance p1, Lcom/stericson/rootshell/execution/Shell$Worker;

    invoke-direct {p1, p0, v0}, Lcom/stericson/rootshell/execution/Shell$Worker;-><init>(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Shell$Worker-IA;)V

    .line 177
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Shell$Worker;->start()V

    :try_start_0
    iget p2, p0, Lcom/stericson/rootshell/execution/Shell;->shellTimeout:I

    int-to-long p2, p2

    .line 188
    invoke-virtual {p1, p2, p3}, Lcom/stericson/rootshell/execution/Shell$Worker;->join(J)V

    .line 193
    iget p2, p1, Lcom/stericson/rootshell/execution/Shell$Worker;->exit:I

    const/16 p3, -0x38f

    if-eq p2, p3, :cond_4

    .line 209
    iget p2, p1, Lcom/stericson/rootshell/execution/Shell$Worker;->exit:I

    const/16 p3, -0x2a

    if-eq p2, p3, :cond_3

    .line 233
    new-instance p2, Ljava/lang/Thread;

    const-string p3, "Shell Input"

    invoke-direct {p2, v2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p3, 0x5

    .line 234
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setPriority(I)V

    .line 235
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 237
    new-instance p2, Ljava/lang/Thread;

    const-string p4, "Shell Output"

    invoke-direct {p2, v3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setPriority(I)V

    .line 239
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->inputStream:Ljava/io/BufferedReader;

    .line 216
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 217
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    .line 218
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 220
    new-instance p2, Lcom/stericson/rootshell/exceptions/RootDeniedException;

    const-string p3, "Root Access Denied"

    invoke-direct {p2, p3}, Lcom/stericson/rootshell/exceptions/RootDeniedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->proc:Ljava/lang/Process;

    .line 196
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :try_start_4
    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->inputStream:Ljava/io/BufferedReader;

    .line 200
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 201
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/stericson/rootshell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    .line 202
    invoke-direct {p0, p2}, Lcom/stericson/rootshell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V

    .line 204
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    iget-object p3, p0, Lcom/stericson/rootshell/execution/Shell;->error:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 242
    :catch_2
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Shell$Worker;->interrupt()V

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 244
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method private cleanCommands()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isCleaning:Z

    const/16 v1, 0xea6

    .line 283
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cleaning up: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    const/4 v3, 0x0

    .line 286
    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->read:I

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    .line 289
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell;->write:I

    iput-boolean v3, p0, Lcom/stericson/rootshell/execution/Shell;->isCleaning:Z

    return-void
.end method

.method public static closeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Request to close all shells!"

    .line 375
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeShell()V

    .line 378
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeRootShell()V

    .line 379
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeCustomShell()V

    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Request to close custom shell!"

    .line 347
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {v0}, Lcom/stericson/rootshell/execution/Shell;->close()V

    return-void
.end method

.method private closeQuietly(Ljava/io/Reader;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeQuietly(Ljava/io/Writer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Request to close root shell!"

    .line 357
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/stericson/rootshell/execution/Shell;->close()V

    return-void
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Request to close normal shell!"

    .line 366
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v0}, Lcom/stericson/rootshell/execution/Shell;->close()V

    return-void
.end method

.method public static getOpenShell()Lcom/stericson/rootshell/execution/Shell;
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    return-object v0
.end method

.method private declared-synchronized getSuVersion(Z)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    xor-int/lit8 v0, p1, 0x1

    :try_start_0
    sget-object v1, Lcom/stericson/rootshell/execution/Shell;->suVersion:[Ljava/lang/String;

    .line 425
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 431
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "su -V"

    goto :goto_0

    :cond_0
    const-string v3, "su -v"

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 448
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 454
    :catch_0
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    :catch_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 461
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_2
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p1, :cond_3

    const-string v4, "."

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_2

    .line 469
    :cond_3
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v4, :cond_2

    :goto_2
    move-object v1, v3

    :cond_4
    :try_start_7
    sget-object p1, Lcom/stericson/rootshell/execution/Shell;->suVersion:[Ljava/lang/String;

    .line 479
    aput-object v1, p1, v0

    goto :goto_3

    :catch_3
    move-exception p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 438
    monitor-exit p0

    return-object v1

    :catch_4
    move-exception p1

    .line 434
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 435
    monitor-exit p0

    return-object v1

    :cond_5
    :goto_3
    :try_start_9
    sget-object p1, Lcom/stericson/rootshell/execution/Shell;->suVersion:[Ljava/lang/String;

    .line 481
    aget-object p1, p1, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isAnyShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static runCommand(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 828
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    move-result-object p0

    return-object p0
.end method

.method public static runRootCommand(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 824
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    move-result-object p0

    return-object p0
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 900
    invoke-static {p0, v0}, Lcom/stericson/rootshell/execution/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static startCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    const-string v0, "Starting Custom Shell!"

    .line 906
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 907
    new-instance v0, Lcom/stericson/rootshell/execution/Shell;

    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellType;->CUSTOM:Lcom/stericson/rootshell/execution/Shell$ShellType;

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/stericson/rootshell/execution/Shell;-><init>(Ljava/lang/String;Lcom/stericson/rootshell/execution/Shell$ShellType;Lcom/stericson/rootshell/execution/Shell$ShellContext;I)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    goto :goto_0

    :cond_0
    const-string p0, "Using Existing Custom Shell!"

    .line 909
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    return-object p0
.end method

.method public static startRootShell()Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 832
    invoke-static {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->startRootShell(II)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(I)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 836
    invoke-static {p0, v0}, Lcom/stericson/rootshell/execution/Shell;->startRootShell(II)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static startRootShell(II)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->defaultContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    .line 840
    invoke-static {p0, v0, p1}, Lcom/stericson/rootshell/execution/Shell;->startRootShell(ILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static startRootShell(ILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const-string v0, "Context is different than open shell, switching context... "

    sget-object v1, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v1, :cond_3

    const-string v0, "Starting Root Shell!"

    .line 849
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    const-string v0, "su"

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v2, :cond_8

    .line 853
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to open Root Shell, attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 854
    new-instance v2, Lcom/stericson/rootshell/execution/Shell;

    sget-object v3, Lcom/stericson/rootshell/execution/Shell$ShellType;->ROOT:Lcom/stericson/rootshell/execution/Shell$ShellType;

    invoke-direct {v2, v0, v3, p1, p0}, Lcom/stericson/rootshell/execution/Shell;-><init>(Ljava/lang/String;Lcom/stericson/rootshell/execution/Shell$ShellType;Lcom/stericson/rootshell/execution/Shell$ShellContext;I)V

    sput-object v2, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/stericson/rootshell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v3, v1, 0x1

    if-ge v1, p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "TimeoutException, could not start shell"

    .line 867
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 868
    throw v2

    :catch_1
    move-exception v2

    add-int/lit8 v3, v1, 0x1

    if-ge v1, p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "RootDeniedException, could not start shell"

    .line 862
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 863
    throw v2

    :catch_2
    move-exception v2

    add-int/lit8 v3, v1, 0x1

    if-ge v1, p2, :cond_2

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string p0, "IOException, could not start shell"

    .line 857
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 858
    throw v2

    .line 872
    :cond_3
    iget-object p0, v1, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    if-eq p0, p1, :cond_7

    .line 874
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    iget-object v0, v0, Lcom/stericson/rootshell/execution/Shell;->shellContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " VS "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    .line 875
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->switchRootShellContext(Lcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/stericson/rootshell/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "TimeoutException, could not switch context!"

    .line 888
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 889
    throw p0

    :catch_4
    move-exception p0

    if-lez p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "RootDeniedException, could not switch context!"

    .line 883
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 884
    throw p0

    :catch_5
    move-exception p0

    if-lez p2, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "IOException, could not switch context!"

    .line 878
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 879
    throw p0

    :cond_7
    const-string p0, "Using Existing Root Shell!"

    .line 893
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :cond_8
    :goto_2
    sget-object p0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    return-object p0
.end method

.method public static startShell()Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 916
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->startShell(I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startShell(I)Lcom/stericson/rootshell/execution/Shell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    if-nez v0, :cond_0

    const-string v0, "Starting Shell!"

    .line 923
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 924
    new-instance v0, Lcom/stericson/rootshell/execution/Shell;

    const-string v1, "/system/bin/sh"

    sget-object v2, Lcom/stericson/rootshell/execution/Shell$ShellType;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellType;

    sget-object v3, Lcom/stericson/rootshell/execution/Shell$ShellContext;->NORMAL:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/stericson/rootshell/execution/Shell;-><init>(Ljava/lang/String;Lcom/stericson/rootshell/execution/Shell$ShellType;Lcom/stericson/rootshell/execution/Shell$ShellContext;I)V

    sput-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    goto :goto_0

    :cond_0
    const-string p0, "Using Existing Shell!"

    .line 926
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;
    :try_end_0
    .catch Lcom/stericson/rootshell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 931
    :catch_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->close:Z

    if-nez v0, :cond_2

    .line 255
    iget-boolean v0, p1, Lcom/stericson/rootshell/execution/Command;->used:Z

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isCleaning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    .line 265
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Shell;->notifyThreads()V

    return-object p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This command has already been executed. (Don\'t re-use command instances.)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to add commands to a closed shell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Request to close shell!"

    .line 312
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "Waiting on shell to finish executing before closing..."

    .line 316
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    add-int/2addr v0, v2

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    .line 326
    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, Lcom/stericson/rootshell/execution/Shell;->close:Z

    .line 332
    invoke-virtual {p0}, Lcom/stericson/rootshell/execution/Shell;->notifyThreads()V

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Shell Closed!"

    .line 335
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    sput-object v1, Lcom/stericson/rootshell/execution/Shell;->rootShell:Lcom/stericson/rootshell/execution/Shell;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    if-ne p0, v0, :cond_3

    sput-object v1, Lcom/stericson/rootshell/execution/Shell;->shell:Lcom/stericson/rootshell/execution/Shell;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    if-ne p0, v0, :cond_4

    sput-object v1, Lcom/stericson/rootshell/execution/Shell;->customShell:Lcom/stericson/rootshell/execution/Shell;

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 333
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCommandQueuePosition(Lcom/stericson/rootshell/execution/Command;)I
    .locals 1

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCommandQueuePositionString(Lcom/stericson/rootshell/execution/Command;)Ljava/lang/String;
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command is in position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->getCommandQueuePosition(Lcom/stericson/rootshell/execution/Command;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently executing command at position "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/stericson/rootshell/execution/Shell;->write:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and the number of commands is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/stericson/rootshell/execution/Shell;->commands:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isSELinuxEnforcing()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 517
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 520
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 525
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    nop

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 532
    :try_start_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    .line 537
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_3
    iput-object v3, p0, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing:Ljava/lang/Boolean;

    :cond_4
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 542
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyThreads()V
    .locals 1

    .line 630
    new-instance v0, Lcom/stericson/rootshell/execution/Shell$2;

    invoke-direct {v0, p0}, Lcom/stericson/rootshell/execution/Shell$2;-><init>(Lcom/stericson/rootshell/execution/Shell;)V

    .line 638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public processErrors(Lcom/stericson/rootshell/execution/Command;)V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 803
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 804
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 816
    :cond_0
    iget v1, p1, Lcom/stericson/rootshell/execution/Command;->id:I

    invoke-virtual {p1, v1, v0}, Lcom/stericson/rootshell/execution/Command;->output(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 819
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stericson/rootshell/RootShell$LogLevel;->ERROR:Lcom/stericson/rootshell/RootShell$LogLevel;

    invoke-static {v0, v1, p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public switchRootShellContext(Lcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell;->shellType:Lcom/stericson/rootshell/execution/Shell$ShellType;

    .line 936
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellType;->ROOT:Lcom/stericson/rootshell/execution/Shell$ShellType;

    if-ne v0, v1, :cond_0

    .line 938
    :try_start_0
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeRootShell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Problem closing shell while trying to switch context..."

    .line 940
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/stericson/rootshell/execution/Shell;->shellTimeout:I

    const/4 v1, 0x3

    .line 945
    invoke-static {v0, p1, v1}, Lcom/stericson/rootshell/execution/Shell;->startRootShell(ILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Can only switch context on a root shell!"

    .line 948
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method public final useCWD(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/stericson/rootshell/execution/Command;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    return-void
.end method
