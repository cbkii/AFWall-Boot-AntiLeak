.class public Lcom/raizlabs/android/dbflow/config/FlowManager;
.super Ljava/lang/Object;
.source "FlowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;,
        Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUTHORITY:Ljava/lang/String; = "com.dbflow.authority"

.field private static final DEFAULT_DATABASE_HOLDER_CLASSNAME:Ljava/lang/String;

.field private static final DEFAULT_DATABASE_HOLDER_NAME:Ljava/lang/String; = "GeneratedDatabaseHolder"

.field private static final DEFAULT_DATABASE_HOLDER_PACKAGE_NAME:Ljava/lang/String;

.field static config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

.field private static globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

.field private static loadedModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>(Lcom/raizlabs/android/dbflow/config/FlowManager$1;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    const-class v0, Lcom/raizlabs/android/dbflow/config/FlowManager;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->DEFAULT_DATABASE_HOLDER_PACKAGE_NAME:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".GeneratedDatabaseHolder"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->DEFAULT_DATABASE_HOLDER_CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDatabaseHolder()V
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 506
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The global database holder is not initialized. Ensure you call FlowManager.init() before accessing the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized close()V
    .locals 3

    const-class v0, Lcom/raizlabs/android/dbflow/config/FlowManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 255
    iget-object v1, v1, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseClassLookupMap:Ljava/util/Map;

    .line 256
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 257
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->close()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

    .line 263
    new-instance v2, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-direct {v2, v1}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>(Lcom/raizlabs/android/dbflow/config/FlowManager$1;)V

    sput-object v2, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    .line 264
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/raizlabs/android/dbflow/config/FlowManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 345
    iget-object v1, v1, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseClassLookupMap:Ljava/util/Map;

    .line 346
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 347
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

    .line 354
    new-instance v2, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-direct {v2, v1}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>(Lcom/raizlabs/android/dbflow/config/FlowManager$1;)V

    sput-object v2, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    .line 355
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getConfig()Lcom/raizlabs/android/dbflow/config/FlowConfig;
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration is not initialized. Please call init(FlowConfig) in your application class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must provide a valid FlowConfig instance. We recommend calling init() in your application class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->checkDatabaseHolder()V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 150
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a registered Database. Did you forget the @Database annotation?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 3

    .line 174
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->checkDatabaseHolder()V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 175
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified database"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was not found. Did you forget the @Database annotation?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->checkDatabaseHolder()V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 139
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Model object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not registered with a Database. Did you forget an annotation?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDatabaseName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelViewAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "InstanceAdapter"

    .line 375
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-object v0
.end method

.method static getMigrations(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/migration/Migration;",
            ">;>;"
        }
    .end annotation

    .line 487
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getMigrations()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    .line 414
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ModelAdapter"

    .line 416
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method

.method private static getModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
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

    .line 469
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getModelNotifierForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;"
        }
    .end annotation

    .line 459
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelNotifier()Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static getModelViewAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModelView:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModelView;>;)",
            "Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter<",
            "TTModelView;>;"
        }
    .end annotation

    .line 432
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelViewAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ModelViewAdapter"

    .line 434
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method

.method private static getModelViewAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;
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

    .line 474
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelViewAdapterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TQueryModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTQueryModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter<",
            "TTQueryModel;>;"
        }
    .end annotation

    .line 450
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "QueryModelAdapter"

    .line 452
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method

.method private static getQueryModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;
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

    .line 479
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getQueryModelAdapterForQueryClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static getRetrievalAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/RetrievalAdapter<",
            "TTModel;>;"
        }
    .end annotation

    .line 389
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelViewAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "RetrievalAdapter"

    .line 397
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-object v0
.end method

.method public static getTableClassForName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 122
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "The specified table %1s was not found. Did you forget to add the @Table annotation and point it to %1s?"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getTableClassForName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "The specified table %1s was not found. Did you forget to add the @Table annotation and point it to %1s?"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelViewAdapterOrNull(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;->getViewName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "ModelAdapter/ModelViewAdapter"

    .line 86
    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/converter/TypeConverter;"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->checkDatabaseHolder()V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 336
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    move-result-object p0

    return-object p0
.end method

.method public static getWritableDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;"
        }
    .end annotation

    .line 192
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getWritableDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 0

    .line 187
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 288
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->build()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Lcom/raizlabs/android/dbflow/config/FlowConfig;)V

    return-void
.end method

.method public static init(Lcom/raizlabs/android/dbflow/config/FlowConfig;)V
    .locals 2

    sput-object p0, Lcom/raizlabs/android/dbflow/config/FlowManager;->config:Lcom/raizlabs/android/dbflow/config/FlowConfig;

    :try_start_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->DEFAULT_DATABASE_HOLDER_CLASSNAME:Ljava/lang/String;

    .line 302
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadDatabaseHolder(Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "Could not find the default GeneratedDatabaseHolder"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 308
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseHolders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseHolders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 316
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadDatabaseHolder(Ljava/lang/Class;)V

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->openDatabasesOnInit()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 321
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabaseDefinitions()Ljava/util/List;

    move-result-object p0

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 324
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    goto :goto_2

    :cond_1
    return-void
.end method

.method public static initModule(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadDatabaseHolder(Ljava/lang/Class;)V

    return-void
.end method

.method public static isDatabaseIntegrityOk(Ljava/lang/String;)Z
    .locals 0

    .line 497
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getHelper()Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->isDatabaseIntegrityOk()Z

    move-result p0

    return p0
.end method

.method protected static loadDatabaseHolder(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    .line 218
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 227
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->add(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    .line 230
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    new-instance v1, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newRegisterForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;"
        }
    .end annotation

    .line 464
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelNotifierForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object p0

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;->newRegister()Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;

    move-result-object p0

    return-object p0
.end method

.method public static reset()V
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 242
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseClassLookupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reset()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->globalDatabaseHolder:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 246
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->reset()V

    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->loadedModules:Ljava/util/HashSet;

    .line 247
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private static throwCannotFindAdapter(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Ensure the class is annotated with proper annotation."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
