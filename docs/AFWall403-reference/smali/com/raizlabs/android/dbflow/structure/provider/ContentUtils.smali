.class public Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# static fields
.field public static final BASE_CONTENT_URI:Ljava/lang/String; = "content://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildUri(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 50
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 51
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildUriWithAuthority(Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://"

    .line 37
    invoke-static {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Ljava/util/List<",
            "TTableClass;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 103
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    if-eqz p3, :cond_1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 107
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v2, v0

    .line 108
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public static bulkInsert(Landroid/net/Uri;Ljava/lang/Class;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Ljava/util/List<",
            "TTableClass;>;)I"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "TTableClass;)I"
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    goto :goto_0

    .line 195
    :cond_0
    sget-object p1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A delete on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " within the ContentResolver appeared to fail."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method public static delete(Landroid/net/Uri;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "TTableClass;)I"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static insert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "TTableClass;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 82
    invoke-virtual {v0, v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    return-object p0
.end method

.method public static insert(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "TTableClass;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->insert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static varargs query(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 214
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs queryList(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TTableClass;>;"
        }
    .end annotation

    .line 251
    invoke-virtual {p3}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 253
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static varargs queryList(Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TTableClass;>;"
        }
    .end annotation

    .line 231
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->queryList(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs querySingle(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TTableClass;"
        }
    .end annotation

    .line 292
    invoke-static/range {p0 .. p5}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->queryList(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs querySingle(Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "TTableClass;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TTableClass;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->querySingle(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static update(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "TTableClass;)I"
        }
    .end annotation

    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 155
    invoke-virtual {v0, v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 158
    sget-object p1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated failed of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public static update(Landroid/net/Uri;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TableClass:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "TTableClass;)I"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/provider/ContentUtils;->update(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
