.class Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;
.super Lcom/raizlabs/android/dbflow/config/DatabaseHolder;
.source "FlowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/FlowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalDatabaseHolder"
.end annotation


# instance fields
.field private initialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/config/FlowManager$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseDefinitionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->databaseDefinitionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->databaseNameMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->typeConverters:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->typeConverters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->databaseClassLookupMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;->databaseClassLookupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return v0
.end method
