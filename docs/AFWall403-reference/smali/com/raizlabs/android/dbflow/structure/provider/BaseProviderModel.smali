.class public abstract Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "BaseProviderModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/provider/ModelProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getDeleteUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->delete(Landroid/net/Uri;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public exists()Z
    .locals 6

    .line 57
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getQueryUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, ""

    .line 57
    invoke-static {v0, v1, v2, v5, v4}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->query(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v3
.end method

.method public insert()J
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getInsertUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->insert(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public load()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->load(Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs load(Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getQueryUri()Landroid/net/Uri;

    move-result-object v1

    .line 70
    invoke-static {v0, v1, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->query(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    :cond_0
    return-void
.end method

.method public save()Z
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getUpdateUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->update(Landroid/net/Uri;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getInsertUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->insert(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public update()Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/provider/BaseProviderModel;->getUpdateUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->update(Landroid/net/Uri;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
