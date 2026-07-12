.class public abstract Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;
.super Ljava/lang/Object;
.source "RetrievalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/config/TableConfig<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->getConfigForDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->getTableConfigForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/TableConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;

    .line 37
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;

    .line 40
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;

    .line 41
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    :cond_1
    return-void
.end method


# virtual methods
.method protected createListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public exists(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public abstract exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation
.end method

.method public getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->createListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    return-object v0
.end method

.method public abstract getModelClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public abstract getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;"
        }
    .end annotation
.end method

.method public getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->createSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    return-object v0
.end method

.method protected getTableConfig()Lcom/raizlabs/android/dbflow/config/TableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/config/TableConfig<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->tableConfig:Lcom/raizlabs/android/dbflow/config/TableConfig;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 59
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 61
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p2, v1, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "TTModel;)V"
        }
    .end annotation
.end method

.method public setListModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    return-void
.end method

.method public setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    return-void
.end method
