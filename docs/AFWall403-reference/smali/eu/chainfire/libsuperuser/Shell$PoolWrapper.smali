.class public Leu/chainfire/libsuperuser/Shell$PoolWrapper;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$DeprecatedSyncCommands;
.implements Leu/chainfire/libsuperuser/Shell$SyncCommands;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoolWrapper"
.end annotation


# instance fields
.field private final shellCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    .line 2805
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public get(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    .line 2825
    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p1

    return-object p1
.end method

.method public getUnpooled()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    .line 2836
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public getUnpooled(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    .line 2848
    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2925
    invoke-virtual {p0, p1, v0, v0, v1}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result p1

    return p1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2953
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 2955
    :try_start_0
    invoke-virtual {v0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 2958
    throw p1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2942
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 2944
    :try_start_0
    invoke-virtual {v0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 2947
    throw p1
.end method

.method public run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2931
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 2933
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2935
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 2936
    throw p1
.end method

.method public run(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2855
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v1
    :try_end_0
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [I

    .line 2858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2859
    new-instance v4, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;

    invoke-direct {v4, p0, v2, v3, p2}, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;-><init>(Leu/chainfire/libsuperuser/Shell$PoolWrapper;[ILjava/util/List;Z)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v4}, Leu/chainfire/libsuperuser/Shell$Threaded;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2869
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->waitForIdle()Z

    aget p1, v2, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p1, :cond_0

    .line 2873
    :try_start_2
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 2874
    throw p1
    :try_end_2
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0
.end method

.method public run(Ljava/lang/Object;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    .line 2885
    invoke-virtual {p0, p1, p3}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2888
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2889
    check-cast p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2890
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2891
    check-cast p1, Ljava/util/List;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    .line 2892
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2893
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    .line 2898
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2899
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    const-string v4, "\""

    if-ge v3, v2, :cond_6

    aget-object v5, p2, v3

    const-string v6, "="

    .line 2901
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_5

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v7, 0x2

    .line 2902
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2903
    invoke-virtual {v0, v5, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "=\""

    .line 2904
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v4, " "

    goto :goto_3

    :cond_4
    const-string v4, "\" "

    .line 2906
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string p2, "sh -c \"\n"

    .line 2909
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_7

    aget-object v2, p1, v1

    .line 2911
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 2912
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2914
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\"

    const-string v0, "\\\\"

    .line 2916
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "$"

    const-string v0, "\\$"

    .line 2917
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 2915
    invoke-virtual {p0, p1, p3}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2895
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "commands parameter must be of type String, List<String> or String[]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
