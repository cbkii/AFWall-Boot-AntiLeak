.class public Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
.super Ljava/lang/Object;
.source "NameAlias.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    }
.end annotation


# instance fields
.field private final aliasName:Ljava/lang/String;

.field private final keyword:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final shouldAddIdentifierToAliasName:Z

.field private final shouldAddIdentifierToQuery:Z

.field private final shouldStripAliasName:Z

.field private final shouldStripIdentifier:Z

.field private final tableName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$000(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$100(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$100(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$200(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->keyword:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$300(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$400(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$400(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 85
    :goto_1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$500(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$500(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName:Ljava/lang/String;

    .line 90
    :goto_2
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$000(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripIdentifier:Z

    .line 91
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$300(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripAliasName:Z

    .line 92
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$600(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToQuery:Z

    .line 93
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->access$700(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToAliasName:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;Lcom/raizlabs/android/dbflow/sql/language/NameAlias$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 1

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    return-object p0
.end method

.method public static ofTable(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    return-object p0
.end method

.method public static rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 1

    .line 44
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public aliasName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToAliasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aliasNameRaw()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripAliasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public fullName()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullQuery()Ljava/lang/String;
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 198
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->keyword:Ljava/lang/String;

    .line 201
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getNameAsKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasNameRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->nameRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    .line 169
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public keyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    .line 100
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public nameRaw()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripIdentifier:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 2

    .line 211
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->keyword:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->aliasName:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripAliasName:Z

    .line 214
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripIdentifier:Z

    .line 215
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToQuery:Z

    .line 216
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldAddIdentifierToAliasName:Z

    .line 217
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    return-object v0
.end method

.method public shouldStripAliasName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripAliasName:Z

    return v0
.end method

.method public shouldStripIdentifier()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->shouldStripIdentifier:Z

    return v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getFullQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
