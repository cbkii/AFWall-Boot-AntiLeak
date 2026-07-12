.class public abstract Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
.super Ljava/lang/Object;
.source "DatabaseDefinition.java"


# instance fields
.field private databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

.field private helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

.field private isResetting:Z

.field private final migrationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final modelAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

.field private final modelTableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final modelViewAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

.field private final queryModelAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private transactionManager:Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->migrationMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelTableNames:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelViewAdapterMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->queryModelAdapterMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    .line 76
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->applyDatabaseConfig(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    return-void
.end method


# virtual methods
.method protected addMigration(ILcom/raizlabs/android/dbflow/sql/migration/Migration;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->migrationMap:Ljava/util/Map;

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->migrationMap:Ljava/util/Map;

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelTableNames:Ljava/util/Map;

    .line 117
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    .line 118
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addModelViewAdapter(Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelViewAdapterMap:Ljava/util/Map;

    .line 123
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addQueryModelAdapter(Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->queryModelAdapterMap:Ljava/util/Map;

    .line 128
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method applyDatabaseConfig(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V
    .locals 4

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->tableConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/config/TableConfig;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    .line 89
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->tableClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-nez v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->setListModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;)V

    .line 97
    :cond_2
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->setSingleModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;)V

    .line 101
    :cond_3
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->setModelSaver(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->helperListener()Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    :cond_5
    if-eqz p1, :cond_7

    .line 108
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->transactionManagerCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->transactionManagerCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;->createManager(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->transactionManager:Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    goto :goto_2

    .line 109
    :cond_7
    :goto_1
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionManager;

    invoke-direct {p1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionManager;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->transactionManager:Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    :goto_2
    return-void
.end method

.method public abstract areConsistencyChecksEnabled()Z
.end method

.method public backupDatabase()V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->backupDB()V

    return-void
.end method

.method public abstract backupEnabled()Z
.end method

.method public beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;
    .locals 1

    .line 276
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getTransactionManager()Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;->stopQueue()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    .line 416
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 417
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->closeInsertStatement()V

    .line 418
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->closeCompiledStatement()V

    .line 419
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->closeDeleteStatement()V

    .line 420
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->closeUpdateStatement()V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->closeDB()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    .line 404
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->close()V

    .line 405
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    :cond_0
    return-void
.end method

.method public executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->beginTransaction()V

    .line 283
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 284
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    .line 287
    throw p1
.end method

.method public abstract getAssociatedDatabaseClassFile()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getDatabaseExtensionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->getDatabaseExtensionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ".db"

    :goto_0
    return-object v0
.end method

.method public getDatabaseFileName()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseExtensionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract getDatabaseVersion()I
.end method

.method public declared-synchronized getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->helperCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->helperCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    invoke-interface {v0, p0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;->createHelper(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    .line 250
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->performRestoreFromBackup()V

    :cond_2
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMigrations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/migration/Migration;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->migrationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getModelAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    .line 174
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object p1
.end method

.method public getModelAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelTableNames:Ljava/util/Map;

    .line 184
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getModelClasses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelAdapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelNotifier()Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    if-nez v0, :cond_2

    .line 263
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getConfig()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getAssociatedDatabaseClassFile()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->modelNotifier()Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->modelNotifier()Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;

    const-string v1, "com.dbflow.authority"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    return-object v0
.end method

.method public getModelQueryAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->queryModelAdapterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelViewAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelViewAdapterMap:Ljava/util/Map;

    .line 202
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    return-object p1
.end method

.method public getModelViewAdapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelViewAdapterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getModelViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->modelViewAdapterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getQueryModelAdapterForQueryClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->queryModelAdapterMap:Ljava/util/Map;

    .line 229
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    return-object p1
.end method

.method public getTransactionManager()Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->transactionManager:Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;

    return-object v0
.end method

.method public getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public abstract isForeignKeysSupported()Z
.end method

.method public isInMemory()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reopen()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    .line 395
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reopen(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    return-void
.end method

.method public reopen(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->openHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    .line 385
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->applyDatabaseConfig(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    .line 386
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    .line 361
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reset(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->databaseConfig:Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    .line 353
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reset(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    return-void
.end method

.method public reset(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isResetting:Z

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->destroy()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->applyDatabaseConfig(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)V

    .line 374
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    :cond_0
    return-void
.end method
