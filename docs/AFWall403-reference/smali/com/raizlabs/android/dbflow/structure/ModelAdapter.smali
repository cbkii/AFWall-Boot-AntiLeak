.class public abstract Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.super Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
.source "ModelAdapter.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/InternalAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private cachingColumns:[Ljava/lang/String;

.field private compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

.field private deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

.field private insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

.field private listModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field private modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    .line 47
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableConfig()Lcom/raizlabs/android/dbflow/config/TableConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableConfig()Lcom/raizlabs/android/dbflow/config/TableConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableConfig()Lcom/raizlabs/android/dbflow/config/TableConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    .line 49
    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;)V

    :cond_0
    return-void
.end method

.method private throwCachingError()V
    .locals 4

    .line 551
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This method may have been called in error. The model class %1s must containan auto-incrementing or at least one primary key (if used in a ModelCache, this method may be called)"

    .line 552
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwSingleCachingError()V
    .locals 4

    .line 558
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This method may have been called in error. The model class %1s must containan auto-incrementing or one primary key (if used in a ModelCache, this method may be called)"

    .line 559
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TTModel;)V"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    return-void
.end method

.method public bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;I)V

    return-void
.end method

.method public bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "TTModel;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;I)V

    return-void
.end method

.method public cachingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeCompiledStatement()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-void
.end method

.method public closeDeleteStatement()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-void
.end method

.method public closeInsertStatement()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-void
.end method

.method public closeUpdateStatement()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-void
.end method

.method public createCachingColumns()[Ljava/lang/String;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getAutoIncrementingColumnName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver<",
            "TTModel;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;-><init>(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V

    return-object v0
.end method

.method public createModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation

    .line 490
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;-><init>(I)V

    return-object v0
.end method

.method protected createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;-><init>()V

    return-object v0
.end method

.method public createWithDatabase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->delete(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->deleteAll(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
.end method

.method public getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 4

    .line 310
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This method may have been called in error. The model class %1s must contain an autoincrementing or single int/long primary key (if used in a ModelCache, this method may be called)"

    .line 311
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 298
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)"

    .line 299
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCacheConverter()Lcom/raizlabs/android/dbflow/structure/cache/IMultiKeyCacheConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/IMultiKeyCacheConverter<",
            "*>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    const-string v1, "For multiple primary keys, a public static IMultiKeyCacheConverter field mustbe  marked with @MultiCacheField in the corresponding model class. The resulting keymust be a unique combination of the multiple keys, otherwise inconsistencies may occur."

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCacheSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getCachingColumnValueFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;
    .locals 0

    .line 374
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->throwSingleCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValueFromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->throwSingleCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromCursor([Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)[Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->throwCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TTModel;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->throwCachingError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachingColumns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingColumns:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->createCachingColumns()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingColumns:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCachingId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumnValuesFromModel([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCachingId([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 417
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 419
    aget-object p1, p1, v0

    return-object p1

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCacheConverter()Lcom/raizlabs/android/dbflow/structure/cache/IMultiKeyCacheConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/IMultiKeyCacheConverter;->getCachingKey([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->compiledStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-object v0
.end method

.method public getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getCompiledStatementQuery()Ljava/lang/String;
.end method

.method public abstract getCreationQuery()Ljava/lang/String;
.end method

.method public getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-object v0
.end method

.method public getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getDeleteStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getDeleteStatementQuery()Ljava/lang/String;
.end method

.method public getInsertOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 539
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getInsertStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insertStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-object v0
.end method

.method public getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    return-object p1
.end method

.method protected getInsertStatementQuery()Ljava/lang/String;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCompiledStatementQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->createListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->listModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    return-object v0
.end method

.method public getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->createModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object v0
.end method

.method public getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    .line 432
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    return-object v0
.end method

.method public abstract getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.end method

.method public getUpdateOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 532
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method

.method public getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    return-object v0
.end method

.method public getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatementQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUpdateStatementQuery()Ljava/lang/String;
.end method

.method public hasAutoIncrement(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")J"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->insertAll(Ljava/util/Collection;)V

    return-void
.end method

.method public insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            ")TTModel;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    return-object v0
.end method

.method public reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            ")V"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->throwCachingError()V

    :cond_0
    return-void
.end method

.method public removeModelFromCache(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->removeModel(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->save(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public saveAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->saveAll(Ljava/util/Collection;)V

    return-void
.end method

.method public saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setModelSaver(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    .line 459
    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->setModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;)V

    return-void
.end method

.method public storeModelInCache(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public updateAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->updateAll(Ljava/util/Collection;)V

    return-void
.end method

.method public updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;->updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    return-void
.end method
