.class public Lcom/raizlabs/android/dbflow/sql/language/Insert;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;
.source "Insert.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field private conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private selectFrom:Lcom/raizlabs/android/dbflow/sql/language/From;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "*>;"
        }
    .end annotation
.end field

.field private valuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
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

    .line 51
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;-><init>(Ljava/lang/Class;)V

    .line 41
    sget-object p1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-void
.end method


# virtual methods
.method public asColumnValues()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->asColumns()Lcom/raizlabs/android/dbflow/sql/language/Insert;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 102
    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "?"

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public asColumns()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    return-object p0
.end method

.method public columnValues(Landroid/content/ContentValues;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    aput-object v4, v1, v3

    .line 190
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    return-object p1
.end method

.method public columnValues(Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->size()I

    move-result v0

    .line 169
    new-array v1, v0, [Ljava/lang/String;

    .line 170
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 174
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->columnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 175
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    return-object p1
.end method

.method public varargs columnValues([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 148
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 151
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 152
    aget-object v3, p1, v2

    .line 153
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->columnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 154
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->value()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    return-object p1
.end method

.method public columns(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object p1

    return-object p1
.end method

.method public varargs columns([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 73
    array-length v0, p1

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 75
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs columns([Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 62
    array-length v0, p1

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 63
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 65
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 66
    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public executeUpdateDelete()J
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call executeUpdateDelete() from an Insert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 1

    .line 275
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call executeUpdateDelete() from an Insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 330
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 5

    .line 285
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "INSERT "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    if-eqz v1, :cond_0

    .line 286
    sget-object v2, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OR"

    .line 287
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    const-string v1, "INTO"

    .line 289
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string v2, ")"

    if-eqz v1, :cond_1

    const-string v1, "("

    .line 294
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    check-cast v3, [Ljava/lang/Object;

    .line 295
    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->selectFrom:Lcom/raizlabs/android/dbflow/sql/language/From;

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->selectFrom:Lcom/raizlabs/android/dbflow/sql/language/From;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_7

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 308
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->columns:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Insert of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when specifyingcolumns needs to have the same amount of values and columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, " VALUES("

    .line 315
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 316
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-lez v1, :cond_5

    const-string v3, ",("

    .line 318
    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_5
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 320
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, ", "

    invoke-static {v4, v3}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The insert of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should haveat least one value specified for the insert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public orAbort()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object v0

    return-object v0
.end method

.method public orFail()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object v0

    return-object v0
.end method

.method public orIgnore()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object v0

    return-object v0
.end method

.method public orReplace()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object v0

    return-object v0
.end method

.method public orRollback()Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;->or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Insert;

    move-result-object v0

    return-object v0
.end method

.method public select(Lcom/raizlabs/android/dbflow/sql/language/From;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->selectFrom:Lcom/raizlabs/android/dbflow/sql/language/From;

    return-object p0
.end method

.method public values(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs values([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Insert;->valuesList:Ljava/util/List;

    .line 121
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
