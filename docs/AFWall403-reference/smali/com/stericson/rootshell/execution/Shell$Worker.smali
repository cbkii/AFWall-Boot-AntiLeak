.class public Lcom/stericson/rootshell/execution/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public shell:Lcom/stericson/rootshell/execution/Shell;


# direct methods
.method private constructor <init>(Lcom/stericson/rootshell/execution/Shell;)V
    .locals 1

    .line 959
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->exit:I

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Shell$Worker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/execution/Shell$Worker;-><init>(Lcom/stericson/rootshell/execution/Shell;)V

    return-void
.end method

.method private setShellOom()V
    .locals 4

    const-string v0, "(echo -17 > /proc/"

    :try_start_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 1012
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetproc(Lcom/stericson/rootshell/execution/Shell;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "pid"

    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "id"

    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 1019
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 1020
    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetproc(Lcom/stericson/rootshell/execution/Shell;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 1021
    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/oom_adj) &> /dev/null\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 1022
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    const-string v1, "(echo -17 > /proc/$$/oom_adj) &> /dev/null\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 1023
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 976
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    const-string v1, "echo Started\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 977
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    :goto_0
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 980
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetinputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 984
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Started"

    .line 986
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->exit:I

    .line 988
    invoke-direct {p0}, Lcom/stericson/rootshell/execution/Shell$Worker;->setShellOom()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    const-string v1, "unknown error occurred."

    .line 992
    invoke-static {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputerror(Lcom/stericson/rootshell/execution/Shell;Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/16 v1, -0x2a

    iput v1, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->exit:I

    .line 996
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    .line 997
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputerror(Lcom/stericson/rootshell/execution/Shell;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$Worker;->shell:Lcom/stericson/rootshell/execution/Shell;

    const-string v1, "RootAccess denied?."

    .line 999
    invoke-static {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputerror(Lcom/stericson/rootshell/execution/Shell;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
