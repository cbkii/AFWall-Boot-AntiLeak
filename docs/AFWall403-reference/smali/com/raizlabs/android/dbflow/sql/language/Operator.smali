.class public Lcom/raizlabs/android/dbflow/sql/language/Operator;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;
.source "Operator.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/IOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/Operator$In;,
        Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;,
        Lcom/raizlabs/android/dbflow/sql/language/Operator$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;",
        "Lcom/raizlabs/android/dbflow/sql/language/IOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private convertToDB:Z

.field private typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Lcom/raizlabs/android/dbflow/converter/TypeConverter;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertToDB:Z

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;)V
    .locals 1

    .line 60
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/Operator;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    .line 61
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/Operator;->typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    .line 62
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertToDB:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertToDB:Z

    .line 63
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value:Ljava/lang/Object;

    return-void
.end method

.method private assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 630
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 631
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public static convertValueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Lcom/raizlabs/android/dbflow/converter/TypeConverter;Z)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            "Lcom/raizlabs/android/dbflow/converter/TypeConverter;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator;

    invoke-direct {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Lcom/raizlabs/android/dbflow/converter/TypeConverter;Z)V

    return-object v0
.end method


# virtual methods
.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 72
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isValueSet:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_1
    return-void
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 2

    .line 523
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v0
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 2

    .line 368
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v0
.end method

.method public between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$Between<",
            "TT;>;"
        }
    .end annotation

    .line 582
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v0
.end method

.method public collate(Lcom/raizlabs/android/dbflow/annotation/Collate;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/Collate;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/annotation/Collate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArg:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/annotation/Collate;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->collate(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    :goto_0
    return-object p0
.end method

.method public collate(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COLLATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArg:Ljava/lang/String;

    return-object p0
.end method

.method public concatenate(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->columnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertToDB:Z

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/converter/TypeConverter;->getDBValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 553
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "%1s %1s "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/raizlabs/android/dbflow/sql/language/IOperator;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 556
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    .line 557
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "+"

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    goto :goto_2

    .line 559
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "null"

    :goto_0
    aput-object p1, v1, v3

    const-string p1, "Cannot concatenate the %1s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 555
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "||"

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 562
    :goto_2
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value:Ljava/lang/Object;

    .line 563
    iput-boolean v4, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isValueSet:Z

    return-object p0
.end method

.method public convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->typeConverter:Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertToDB:Z

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/converter/TypeConverter;->getDBValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value passed to operation is not valid type for TypeConverter in the column. Preserving value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to be used as is."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 623
    invoke-static {p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 625
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "/"

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "/"

    .line 476
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "/"

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "="

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "="

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 535
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 536
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 537
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "GLOB"

    .line 437
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/IConditional;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GLOB"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 154
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 173
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 349
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 180
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7

    .line 530
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7

    .line 375
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public final varargs in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 589
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/util/Collection;ZLcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v0
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "="

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "="

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "="

    .line 84
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "!="

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "!="

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "!="

    .line 97
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNotNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IS NOT NULL"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 287
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    return-object p0
.end method

.method public isNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IS NULL"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 280
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    return-object p0
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 187
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 188
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 461
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 194
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "LIKE"

    .line 419
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/IConditional;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "LIKE"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 120
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "-"

    .line 498
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "-"

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "-"

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "!="

    .line 413
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "!="

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notIn(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7

    .line 389
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x0

    move-object v4, p2

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7

    .line 382
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public final varargs notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 596
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v6
.end method

.method public notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/util/Collection;ZLcom/raizlabs/android/dbflow/sql/language/Operator$1;)V

    return-object v0
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "NOT LIKE"

    .line 431
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "NOT LIKE"

    .line 425
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NOT LIKE"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 137
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public operation(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->operation:Ljava/lang/String;

    return-object p0
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "+"

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "+"

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "+"

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public postfix(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArg:Ljava/lang/String;

    return-object p0
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "%"

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "%"

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "%"

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->separator:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "*"

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    const-string v0, "*"

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "*"

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->assignValueOp(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isValueSet:Z

    return-object p0
.end method
