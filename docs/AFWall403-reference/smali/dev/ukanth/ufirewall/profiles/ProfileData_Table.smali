.class public final Ldev/ukanth/ufirewall/profiles/ProfileData_Table;
.super Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.source "ProfileData_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
        "Ldev/ukanth/ufirewall/profiles/ProfileData;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field public static final attibutes:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
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

.field public static final identifier:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
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

.field public static final parentProfile:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 30
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const-string v3, "name"

    invoke-direct {v1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 32
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v3, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const-string v4, "identifier"

    invoke-direct {v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->identifier:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 34
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const-string v5, "attibutes"

    invoke-direct {v3, v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->attibutes:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 36
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v5, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const-string v6, "parentProfile"

    invoke-direct {v4, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->parentProfile:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v6, 0x0

    .line 38
    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public final bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 2

    .line 119
    iget-wide v0, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`id`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 3

    const/4 v0, 0x1

    .line 151
    iget-wide v1, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;I)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    .line 126
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 127
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 128
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getAttibutes()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x4

    .line 129
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getParentProfile()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 2

    const-string v0, "`name`"

    .line 111
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`identifier`"

    .line 112
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`attibutes`"

    .line 113
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getAttibutes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`parentProfile`"

    .line 114
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getParentProfile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 3

    .line 135
    iget-wide v0, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 136
    invoke-virtual {p0, p1, p2, v2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;I)V

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 3

    const/4 v0, 0x1

    .line 141
    iget-wide v1, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 143
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 144
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getAttibutes()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 145
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getParentProfile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 146
    iget-wide v1, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;-><init>()V

    return-object v0
.end method

.method public final exists(Ldev/ukanth/ufirewall/profiles/ProfileData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 6

    .line 190
    iget-wide v0, p1, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    new-array v0, v4, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 191
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 192
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 193
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/profiles/ProfileData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 194
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

    .line 25
    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->exists(Ldev/ukanth/ufirewall/profiles/ProfileData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-object v0
.end method

.method public final getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public final getAutoIncrementingId(Ldev/ukanth/ufirewall/profiles/ProfileData;)Ljava/lang/Number;
    .locals 2

    .line 91
    iget-wide v0, p1, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

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

    .line 25
    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->getAutoIncrementingId(Ldev/ukanth/ufirewall/profiles/ProfileData;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `ProfileData`(`id`,`name`,`identifier`,`attibutes`,`parentProfile`) VALUES (?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `ProfileData`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `identifier` TEXT, `attibutes` TEXT, `parentProfile` TEXT)"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `ProfileData` WHERE `id`=?"

    return-object v0
.end method

.method public final getInsertStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `ProfileData`(`name`,`identifier`,`attibutes`,`parentProfile`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Ldev/ukanth/ufirewall/profiles/ProfileData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 4

    .line 199
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 200
    iget-wide v2, p1, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

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

    .line 25
    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/profiles/ProfileData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2

    .line 61
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`identifier`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "`attibutes`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "`parentProfile`"

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

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->identifier:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_1
    sget-object p1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->attibutes:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_2
    sget-object p1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_3
    sget-object p1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->parentProfile:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_4
    sget-object p1, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x55f2ed2b -> :sswitch_4
        -0x30658ff -> :sswitch_3
        0x2d3a45 -> :sswitch_2
        0x6f1c399 -> :sswitch_1
        0x342aec77 -> :sswitch_0
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

    const-string v0, "`ProfileData`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `ProfileData` SET `id`=?,`name`=?,`identifier`=?,`attibutes`=?,`parentProfile`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 2

    const-string v0, "id"

    .line 181
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    const-string v0, "name"

    .line 182
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    const-string v0, "identifier"

    .line 183
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setIdentifier(Ljava/lang/String;)V

    const-string v0, "attibutes"

    .line 184
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setAttibutes(Ljava/lang/String;)V

    const-string v0, "parentProfile"

    .line 185
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setParentProfile(Ljava/lang/String;)V

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

    .line 25
    check-cast p2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    return-void
.end method

.method public final newInstance()Ldev/ukanth/ufirewall/profiles/ProfileData;
    .locals 1

    .line 56
    new-instance v0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->newInstance()Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    return-object v0
.end method

.method public final updateAutoIncrement(Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/Number;)V
    .locals 2

    .line 86
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

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

    .line 25
    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->updateAutoIncrement(Ldev/ukanth/ufirewall/profiles/ProfileData;Ljava/lang/Number;)V

    return-void
.end method
