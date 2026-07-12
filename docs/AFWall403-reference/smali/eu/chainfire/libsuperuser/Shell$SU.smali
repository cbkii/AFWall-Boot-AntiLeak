.class public Leu/chainfire/libsuperuser/Shell$SU;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SU"
.end annotation


# static fields
.field private static isSELinuxEnforcing:Ljava/lang/Boolean;

.field private static suVersion:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 365
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available()Z
    .locals 2

    .line 423
    sget-object v0, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 424
    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized clearCachedResults()V
    .locals 4

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    sget-object v2, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 648
    aput-object v1, v2, v3

    const/4 v3, 0x1

    .line 649
    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isSELinuxEnforcing()Z
    .locals 7

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 592
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 597
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/fs/selinux/enforce"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 600
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/sys/fs/selinux/enforce"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 602
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 605
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    nop

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    :try_start_4
    const-string v1, "android.os.SELinux"

    .line 616
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isSELinuxEnforced"

    new-array v5, v2, [Ljava/lang/Class;

    .line 617
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 618
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 621
    :catch_1
    :try_start_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 627
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    sput-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    :cond_5
    sget-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isSU(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x20

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 517
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 519
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 522
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static run(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "su"

    invoke-static {v2, p0, v0, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 396
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "su"

    invoke-static {v2, p0, v1, v0}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static run([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "su"

    .line 410
    invoke-static {v2, p0, v0, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static shell(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "su"

    if-eqz p1, :cond_0

    .line 538
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SU;->version(Z)Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->version(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string v6, "SUPERSU"

    .line 546
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xbe

    if-lt v4, v5, :cond_0

    .line 548
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object p1, v5, v1

    const-string p1, "%s --context %s"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-lez p0, :cond_1

    .line 555
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public static shellMountMaster()Ljava/lang/String;
    .locals 1

    const-string v0, "su --mount-master"

    return-object v0
.end method

.method public static declared-synchronized version(Z)Ljava/lang/String;
    .locals 9

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    xor-int/lit8 v3, p0, 0x1

    :try_start_0
    sget-object v4, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    .line 449
    aget-object v4, v4, v3

    if-nez v4, :cond_6

    .line 453
    invoke-static {}, Leu/chainfire/libsuperuser/Shell;->access$000()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-eqz p0, :cond_0

    const-string v4, "su -V"

    goto :goto_0

    :cond_0
    const-string v4, "su -v"

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "exit"

    aput-object v6, v1, v2

    .line 454
    invoke-static {v4, v1, v5, v2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 461
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :try_start_2
    sget-object v4, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v8, "su -V"

    goto :goto_1

    :cond_2
    const-string v8, "su -v"

    :goto_1
    aput-object v8, v7, v2

    const-string v8, "exit"

    aput-object v8, v7, v1

    invoke-virtual {v4, v7, v6, v5, v2}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    :try_end_2
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v1, v6

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :catch_1
    nop

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_5

    .line 479
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_2
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p0, :cond_4

    .line 481
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    goto :goto_4

    .line 487
    :cond_4
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v4, :cond_3

    :goto_4
    move-object v5, v2

    :cond_5
    :try_start_5
    sget-object p0, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    .line 498
    aput-object v5, p0, v3

    :cond_6
    sget-object p0, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    .line 500
    aget-object p0, p0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
