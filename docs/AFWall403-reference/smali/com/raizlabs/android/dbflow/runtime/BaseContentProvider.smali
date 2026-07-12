.class public abstract Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;
.super Landroid/content/ContentProvider;
.source "BaseContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$PropertyConverter;
    }
.end annotation


# instance fields
.field protected database:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

.field protected moduleClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
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

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->moduleClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected abstract bulkInsert(Landroid/net/Uri;Landroid/content/ContentValues;)I
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->getDatabase()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v2

    new-instance v3, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider$1;-><init>(Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;[Landroid/content/ContentValues;[ILandroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 68
    aget p1, v1, v0

    return p1
.end method

.method protected getDatabase()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->database:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->database:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->database:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    return-object v0
.end method

.method protected abstract getDatabaseName()Ljava/lang/String;
.end method

.method public onCreate()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->initModule(Ljava/lang/Class;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/runtime/BaseContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
