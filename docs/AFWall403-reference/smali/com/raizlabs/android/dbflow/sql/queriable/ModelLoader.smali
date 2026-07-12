.class public abstract Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;
.super Ljava/lang/Object;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        "TReturn:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

.field private instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->modelClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "TTReturn;)TTReturn;"
        }
    .end annotation
.end method

.method public getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->modelClass:Ljava/lang/Class;

    .line 96
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    return-object v0
.end method

.method public getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->modelClass:Ljava/lang/Class;

    .line 88
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    return-object v0
.end method

.method public getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->modelClass:Ljava/lang/Class;

    return-object v0
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Ljava/lang/String;",
            ")TTReturn;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Ljava/lang/String;",
            "TTReturn;)TTReturn;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-interface {p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, p3}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            ")TTReturn;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "TTReturn;)TTReturn;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    .line 75
    throw p2

    :cond_0
    :goto_0
    return-object p2
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTReturn;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTReturn;)TTReturn;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
