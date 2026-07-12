.class public final Ldev/ukanth/ufirewall/customrules/CustomRule_Table;
.super Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.source "CustomRule_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
        "Ldev/ukanth/ufirewall/customrules/CustomRule;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field public static final active:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final rule:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 31
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    const-string v3, "name"

    invoke-direct {v1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 33
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v3, Ldev/ukanth/ufirewall/customrules/CustomRule;

    const-string v4, "rule"

    invoke-direct {v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->rule:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 35
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v4, Ldev/ukanth/ufirewall/customrules/CustomRule;

    const-string v5, "timestamp"

    invoke-direct {v3, v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 37
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v5, Ldev/ukanth/ufirewall/customrules/CustomRule;

    const-string v6, "active"

    invoke-direct {v4, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->active:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v6, 0x0

    .line 39
    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public final bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 2

    .line 120
    iget-wide v0, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`id`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public bridge synthetic bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 3

    const/4 v0, 0x1

    .line 152
    iget-wide v1, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 127
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 128
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getRule()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 129
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 p3, p3, 0x4

    .line 130
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 2

    const-string v0, "`name`"

    .line 112
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`rule`"

    .line 113
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getRule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`timestamp`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->isActive()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "`active`"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 3

    .line 136
    iget-wide v0, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 137
    invoke-virtual {p0, p1, p2, v2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;I)V

    return-void
.end method

.method public bridge synthetic bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 3

    const/4 v0, 0x1

    .line 142
    iget-wide v1, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 143
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 144
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getRule()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 145
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/customrules/CustomRule;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 147
    iget-wide v1, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "Ldev/ukanth/ufirewall/customrules/CustomRule;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;-><init>()V

    return-object v0
.end method

.method public final exists(Ldev/ukanth/ufirewall/customrules/CustomRule;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 6

    .line 196
    iget-wide v0, p1, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    new-array v0, v4, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 197
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    .line 198
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 199
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/customrules/CustomRule;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->hasData(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->exists(Ldev/ukanth/ufirewall/customrules/CustomRule;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-object v0
.end method

.method public final getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public final getAutoIncrementingId(Ldev/ukanth/ufirewall/customrules/CustomRule;)Ljava/lang/Number;
    .locals 2

    .line 92
    iget-wide v0, p1, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAutoIncrementingId(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    check-cast p1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->getAutoIncrementingId(Ldev/ukanth/ufirewall/customrules/CustomRule;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `CustomRule`(`id`,`name`,`rule`,`timestamp`,`active`) VALUES (?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `CustomRule`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `rule` TEXT, `timestamp` INTEGER, `active` INTEGER)"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `CustomRule` WHERE `id`=?"

    return-object v0
.end method

.method public final getInsertStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `CustomRule`(`name`,`rule`,`timestamp`,`active`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/customrules/CustomRule;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Ldev/ukanth/ufirewall/customrules/CustomRule;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Ldev/ukanth/ufirewall/customrules/CustomRule;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 4

    .line 205
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 206
    iget-wide v2, p1, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    check-cast p1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/customrules/CustomRule;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2

    .line 62
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`timestamp`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "`active`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "`rule`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "`name`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_1
    sget-object p1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_2
    sget-object p1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->active:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_3
    sget-object p1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->rule:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_4
    sget-object p1, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x55f2ed2b -> :sswitch_4
        -0x55b17b7c -> :sswitch_3
        -0x50ceca46 -> :sswitch_2
        0x2d3a45 -> :sswitch_1
        0x3b9f026a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`CustomRule`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `CustomRule` SET `id`=?,`name`=?,`rule`=?,`timestamp`=?,`active`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/customrules/CustomRule;)V
    .locals 2

    const-string v0, "id"

    .line 182
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    const-string v0, "name"

    .line 183
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/customrules/CustomRule;->setName(Ljava/lang/String;)V

    const-string v0, "rule"

    .line 184
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/customrules/CustomRule;->setRule(Ljava/lang/String;)V

    const-string v0, "timestamp"

    .line 185
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldev/ukanth/ufirewall/customrules/CustomRule;->setTimestamp(J)V

    const-string v0, "active"

    .line 186
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 187
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/customrules/CustomRule;->setActive(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 190
    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/customrules/CustomRule;->setActive(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p2, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/customrules/CustomRule;)V

    return-void
.end method

.method public final newInstance()Ldev/ukanth/ufirewall/customrules/CustomRule;
    .locals 1

    .line 57
    new-instance v0, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/customrules/CustomRule;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->newInstance()Ldev/ukanth/ufirewall/customrules/CustomRule;

    move-result-object v0

    return-object v0
.end method

.method public final updateAutoIncrement(Ldev/ukanth/ufirewall/customrules/CustomRule;Ljava/lang/Number;)V
    .locals 2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    return-void
.end method

.method public bridge synthetic updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 26
    check-cast p1, Ldev/ukanth/ufirewall/customrules/CustomRule;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/customrules/CustomRule_Table;->updateAutoIncrement(Ldev/ukanth/ufirewall/customrules/CustomRule;Ljava/lang/Number;)V

    return-void
.end method
