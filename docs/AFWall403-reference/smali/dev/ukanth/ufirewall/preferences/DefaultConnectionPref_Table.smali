.class public final Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;
.super Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.source "DefaultConnectionPref_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
        "Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field public static final connectionType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final modeType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final state:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    const-string v2, "uid"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 28
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    const-string v3, "connectionType"

    invoke-direct {v1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->connectionType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 30
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v3, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    const-string v4, "state"

    invoke-direct {v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->state:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 32
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v4, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    const-string v5, "modeType"

    invoke-direct {v3, v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->modeType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v5, 0x0

    .line 34
    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V
    .locals 2

    .line 112
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

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

    .line 23
    check-cast p2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 93
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x2

    .line 94
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 95
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->isState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 p3, p3, 0x4

    .line 96
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getModeType()I

    move-result p2

    int-to-long v0, p2

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

    .line 23
    check-cast p2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`uid`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`connectionType`"

    .line 85
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->isState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`state`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getModeType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "`modeType`"

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

    .line 23
    check-cast p2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V
    .locals 3

    .line 102
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->isState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getModeType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x5

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

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

    .line 23
    check-cast p2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    return-void
.end method

.method public final exists(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 150
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    .line 151
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 152
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->hasData(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
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

    .line 23
    check-cast p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->exists(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `DefaultConnectionPref`(`uid`,`connectionType`,`state`,`modeType`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `DefaultConnectionPref`(`uid` INTEGER, `connectionType` TEXT, `state` INTEGER, `modeType` INTEGER, PRIMARY KEY(`uid`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `DefaultConnectionPref` WHERE `uid`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;",
            ">;"
        }
    .end annotation

    .line 42
    const-class v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 2

    .line 158
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 159
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 23
    check-cast p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2

    .line 57
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`modeType`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "`uid`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "`connectionType`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "`state`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->modeType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_1
    sget-object p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_2
    sget-object p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->connectionType:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_3
    sget-object p1, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->state:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5edbf9b1 -> :sswitch_3
        -0x3e464838 -> :sswitch_2
        0x57f9670 -> :sswitch_1
        0x22712823 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`DefaultConnectionPref`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `DefaultConnectionPref` SET `uid`=?,`connectionType`=?,`state`=?,`modeType`=? WHERE `uid`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V
    .locals 2

    const-string v0, "uid"

    .line 137
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setUid(I)V

    const-string v0, "connectionType"

    .line 138
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setConnectionType(Ljava/lang/String;)V

    const-string v0, "state"

    .line 139
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setState(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setState(Z)V

    :goto_0
    const-string v0, "modeType"

    .line 145
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->setModeType(I)V

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

    .line 23
    check-cast p2, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V

    return-void
.end method

.method public final newInstance()Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;
    .locals 1

    .line 52
    new-instance v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;->newInstance()Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    move-result-object v0

    return-object v0
.end method
