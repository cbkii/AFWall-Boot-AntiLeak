.class public Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<QueryClass:",
        "Lcom/raizlabs/android/dbflow/sql/QueryBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# static fields
.field private static final QUOTE:C = '`'

.field private static final QUOTE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected query:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "`.*`"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->QUOTE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->query:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->query:Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-void
.end method

.method public static isQuoted(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->QUOTE_PATTERN:Ljava/util/regex/Pattern;

    .line 268
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 322
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 302
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    const-string v2, "`.`"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x60

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 254
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->isQuoted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->isQuoted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "`"

    const-string v1, ""

    .line 280
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->query:Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    const-string v0, ", "

    .line 131
    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendList(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)TQueryClass;"
        }
    .end annotation

    const-string v0, ", "

    .line 142
    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendNotEmpty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendOptional(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendParenthesisEnclosed(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    const-string v0, "("

    .line 65
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 157
    :cond_0
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendQuoted(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    const-string v0, "*"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendQuotedArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    const-string v0, "`, `"

    .line 225
    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQuoted(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    const-string v0, "*"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendQuotedList(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)TQueryClass;"
        }
    .end annotation

    const-string v0, "`, `"

    .line 214
    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQuoted(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSQLiteType(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
            ")TQueryClass;"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQueryClass;"
        }
    .end annotation

    const-string v0, " "

    .line 43
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendType(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->get(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSQLiteType(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected castThis()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQueryClass;"
        }
    .end annotation

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->query:Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
