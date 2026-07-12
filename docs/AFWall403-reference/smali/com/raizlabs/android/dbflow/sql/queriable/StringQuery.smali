.class public Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;
.source "StringQuery.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;
.implements Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/Query;",
        "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private args:[Ljava/lang/String;

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 66
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->query:Ljava/lang/String;

    return-object v0
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->query:Ljava/lang/String;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->args:[Ljava/lang/String;

    .line 51
    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    return-object p1
.end method

.method public setSelectionArgs([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/queriable/StringQuery;->args:[Ljava/lang/String;

    return-object p0
.end method
