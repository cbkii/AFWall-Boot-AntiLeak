.class public abstract Leu/chainfire/libsuperuser/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final MAX_POLICY_LENGTH:I = 0xfe0

.field private static volatile canInject:Ljava/lang/Boolean; = null

.field private static volatile injected:Z = false

.field private static final synchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInject()Z
    .locals 6

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 92
    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    const-string v2, "sh"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "supolicy"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    .line 101
    invoke-static {v2, v4, v5, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "supolicy"

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    :cond_2
    sget-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static haveInjected()Z
    .locals 1

    sget-boolean v0, Leu/chainfire/libsuperuser/Policy;->injected:Z

    return v0
.end method

.method public static resetCanInject()V
    .locals 2

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 119
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resetInjected()V
    .locals 2

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 72
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getInjectCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getInjectCommands(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 141
    monitor-enter v0

    .line 143
    :try_start_0
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    invoke-static {}, Leu/chainfire/libsuperuser/Policy;->canInject()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    sget-boolean p1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    if-eqz p1, :cond_2

    .line 149
    monitor-exit v0

    return-object v2

    .line 152
    :cond_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Policy;->getPolicies()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 153
    array-length v1, p1

    if-lez v1, :cond_7

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    .line 158
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    const/16 v7, 0xfe0

    if-ge v6, v7, :cond_3

    goto :goto_1

    .line 162
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supolicy --live"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    goto :goto_2

    .line 160
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supolicy --live"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_6
    monitor-exit v0

    return-object v1

    .line 174
    :cond_7
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract getPolicies()[Ljava/lang/String;
.end method

.method public inject()V
    .locals 3

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 184
    monitor-enter v0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 190
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->run(Ljava/util/List;)Ljava/util/List;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inject(Leu/chainfire/libsuperuser/Shell$Interactive;Z)V
    .locals 3

    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 208
    monitor-enter v0

    .line 210
    :try_start_0
    invoke-virtual {p0, p2}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 214
    invoke-virtual {p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 222
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
