.class public Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
.super Ljava/lang/Object;
.source "NameAlias.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aliasName:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private shouldAddIdentifierToAliasName:Z

.field private shouldAddIdentifierToQuery:Z

.field private shouldStripAliasName:Z

.field private shouldStripIdentifier:Z

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripIdentifier:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripAliasName:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToQuery:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToAliasName:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripIdentifier:Z

    return p0
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripAliasName:Z

    return p0
.end method

.method static synthetic access$400(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->aliasName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToQuery:Z

    return p0
.end method

.method static synthetic access$700(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToAliasName:Z

    return p0
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->aliasName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 2

    .line 304
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;Lcom/raizlabs/android/dbflow/sql/language/NameAlias$1;)V

    return-object v0
.end method

.method public distinct()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 1

    const-string v0, "DISTINCT"

    .line 241
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    return-object v0
.end method

.method public keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToAliasName:Z

    return-object p0
.end method

.method public shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToQuery:Z

    return-object p0
.end method

.method public shouldStripAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripAliasName:Z

    return-object p0
.end method

.method public shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldStripIdentifier:Z

    return-object p0
.end method

.method public withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->tableName:Ljava/lang/String;

    return-object p0
.end method
