.class Lcom/stericson/rootshell/execution/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/rootshell/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/rootshell/execution/Shell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 559
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 565
    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetclose(Lcom/stericson/rootshell/execution/Shell;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v2

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 566
    iput-boolean v0, v2, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 567
    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 569
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 571
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v1

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 576
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetread(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v1

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "Waiting for read and write to catch up before cleanup."

    .line 577
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 582
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$mcleanCommands(Lcom/stericson/rootshell/execution/Shell;)V

    :cond_3
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 591
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v1

    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    const/4 v2, 0x1

    .line 592
    iput-boolean v2, v1, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 593
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetcommands(Lcom/stericson/rootshell/execution/Shell;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/rootshell/execution/Command;

    .line 594
    invoke-virtual {v1}, Lcom/stericson/rootshell/execution/Command;->startExecution()V

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetshellContext(Lcom/stericson/rootshell/execution/Shell;)Lcom/stericson/rootshell/execution/Shell$ShellContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 598
    invoke-static {v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 599
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\necho F*D^W@#FGF "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    invoke-static {v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgettotalExecuted(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " $?\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 603
    invoke-static {v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 604
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 606
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetwrite(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputwrite(Lcom/stericson/rootshell/execution/Shell;I)V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 607
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgettotalExecuted(Lcom/stericson/rootshell/execution/Shell;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputtotalExecuted(Lcom/stericson/rootshell/execution/Shell;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 608
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetclose(Lcom/stericson/rootshell/execution/Shell;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 612
    iput-boolean v0, v1, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 613
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    const-string v2, "\nexit 0\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 614
    invoke-static {v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    const-string v1, "Closing shell"

    .line 615
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 623
    invoke-static {v1, v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputwrite(Lcom/stericson/rootshell/execution/Shell;I)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 624
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$mcloseQuietly(Lcom/stericson/rootshell/execution/Shell;Ljava/io/Writer;)V

    return-void

    :catchall_0
    move-exception v2

    .line 569
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 620
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/stericson/rootshell/RootShell$LogLevel;->ERROR:Lcom/stericson/rootshell/RootShell$LogLevel;

    invoke-static {v2, v3, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v1, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 623
    invoke-static {v1, v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputwrite(Lcom/stericson/rootshell/execution/Shell;I)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 624
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$mcloseQuietly(Lcom/stericson/rootshell/execution/Shell;Ljava/io/Writer;)V

    return-void

    :goto_4
    iget-object v2, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 623
    invoke-static {v2, v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fputwrite(Lcom/stericson/rootshell/execution/Shell;I)V

    iget-object v0, p0, Lcom/stericson/rootshell/execution/Shell$1;->this$0:Lcom/stericson/rootshell/execution/Shell;

    .line 624
    invoke-static {v0}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$fgetoutputStream(Lcom/stericson/rootshell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/stericson/rootshell/execution/Shell;->-$$Nest$mcloseQuietly(Lcom/stericson/rootshell/execution/Shell;Ljava/io/Writer;)V

    .line 625
    throw v1
.end method
