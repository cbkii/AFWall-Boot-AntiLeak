.class public final Ldev/ukanth/ufirewall/log/LogData_Table;
.super Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.source "LogData_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
        "Ldev/ukanth/ufirewall/log/LogData;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field public static final appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final dpt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final dst:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final hostname:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
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

.field public static final in:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final len:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final out:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final proto:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final spt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final src:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
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

.field public static final type:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
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
    .locals 16

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v1, Ldev/ukanth/ufirewall/log/LogData;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ldev/ukanth/ufirewall/log/LogData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 37
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v2, Ldev/ukanth/ufirewall/log/LogData;

    const-string v3, "uid"

    invoke-direct {v1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 39
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v3, Ldev/ukanth/ufirewall/log/LogData;

    const-string v4, "appName"

    invoke-direct {v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Ldev/ukanth/ufirewall/log/LogData_Table;->appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 41
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v4, Ldev/ukanth/ufirewall/log/LogData;

    const-string v5, "in"

    invoke-direct {v3, v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Ldev/ukanth/ufirewall/log/LogData_Table;->in:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 43
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v5, Ldev/ukanth/ufirewall/log/LogData;

    const-string v6, "out"

    invoke-direct {v4, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Ldev/ukanth/ufirewall/log/LogData_Table;->out:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 45
    new-instance v5, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v6, Ldev/ukanth/ufirewall/log/LogData;

    const-string v7, "proto"

    invoke-direct {v5, v6, v7}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Ldev/ukanth/ufirewall/log/LogData_Table;->proto:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 47
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v7, Ldev/ukanth/ufirewall/log/LogData;

    const-string v8, "spt"

    invoke-direct {v6, v7, v8}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Ldev/ukanth/ufirewall/log/LogData_Table;->spt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 49
    new-instance v7, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v8, Ldev/ukanth/ufirewall/log/LogData;

    const-string v9, "dst"

    invoke-direct {v7, v8, v9}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Ldev/ukanth/ufirewall/log/LogData_Table;->dst:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 51
    new-instance v8, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v9, Ldev/ukanth/ufirewall/log/LogData;

    const-string v10, "len"

    invoke-direct {v8, v9, v10}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Ldev/ukanth/ufirewall/log/LogData_Table;->len:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 53
    new-instance v9, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v10, Ldev/ukanth/ufirewall/log/LogData;

    const-string v11, "src"

    invoke-direct {v9, v10, v11}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Ldev/ukanth/ufirewall/log/LogData_Table;->src:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 55
    new-instance v10, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v11, Ldev/ukanth/ufirewall/log/LogData;

    const-string v12, "dpt"

    invoke-direct {v10, v11, v12}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Ldev/ukanth/ufirewall/log/LogData_Table;->dpt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 57
    new-instance v11, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v12, Ldev/ukanth/ufirewall/log/LogData;

    const-string v13, "timestamp"

    invoke-direct {v11, v12, v13}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 59
    new-instance v12, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v13, Ldev/ukanth/ufirewall/log/LogData;

    const-string v14, "hostname"

    invoke-direct {v12, v13, v14}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Ldev/ukanth/ufirewall/log/LogData_Table;->hostname:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 61
    new-instance v13, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v14, Ldev/ukanth/ufirewall/log/LogData;

    const-string v15, "type"

    invoke-direct {v13, v14, v15}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Ldev/ukanth/ufirewall/log/LogData_Table;->type:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const/16 v14, 0xe

    new-array v14, v14, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v15, 0x0

    .line 63
    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v5, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v9, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    const/16 v0, 0xb

    aput-object v11, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v13, v14, v0

    sput-object v14, Ldev/ukanth/ufirewall/log/LogData_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public final bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 2

    .line 226
    iget-wide v0, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`id`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogData;)V

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToContentValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 3

    const/4 v0, 0x1

    .line 275
    iget-wide v1, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 232
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x2

    .line 233
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 234
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getIn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 235
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 236
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 237
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x7

    .line 238
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 239
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x9

    .line 240
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 241
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0xb

    .line 242
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0xc

    .line 243
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0xd

    .line 244
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getType()I

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 2

    .line 209
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`uid`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`appName`"

    .line 210
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`in`"

    .line 211
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getIn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`out`"

    .line 212
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`proto`"

    .line 213
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`spt`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`dst`"

    .line 215
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`len`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`src`"

    .line 217
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`dpt`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`timestamp`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "`hostname`"

    .line 220
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "`type`"

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 3

    .line 250
    iget-wide v0, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 251
    invoke-virtual {p0, p1, p2, v2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;I)V

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 3

    const/4 v0, 0x1

    .line 256
    iget-wide v1, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 257
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 258
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 259
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getIn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 260
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 261
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 263
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 265
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 267
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 268
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 270
    iget-wide v1, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final cachingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final createCachingColumns()[Ljava/lang/String;
    .locals 1

    const-string v0, "`id`"

    .line 204
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final createListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 2

    .line 168
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableListModelLoader;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableListModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected createListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;-><init>(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V

    return-object v0
.end method

.method protected bridge synthetic createListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;
    .locals 1

    .line 32
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->createListModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;

    move-result-object v0

    return-object v0
.end method

.method public final createSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 2

    .line 163
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final createSingleModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;-><init>()V

    return-object v0
.end method

.method public final delete(Ldev/ukanth/ufirewall/log/LogData;)Z
    .locals 2

    .line 339
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->removeModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->delete(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final delete(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->removeModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->delete(Ldev/ukanth/ufirewall/log/LogData;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->delete(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final exists(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 6

    .line 323
    iget-wide v0, p1, Ldev/ukanth/ufirewall/log/LogData;->id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    new-array v0, v4, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 324
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/log/LogData;

    .line 325
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 326
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 327
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->exists(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/log/LogData_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-object v0
.end method

.method public final getAutoIncrementingColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public final getAutoIncrementingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Number;
    .locals 2

    .line 143
    iget-wide v0, p1, Ldev/ukanth/ufirewall/log/LogData;->id:J

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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getAutoIncrementingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final getCachingColumnValueFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;
    .locals 2

    const-string v0, "id"

    .line 194
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getCachingColumnValueFromModel(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;
    .locals 2

    .line 189
    iget-wide v0, p1, Ldev/ukanth/ufirewall/log/LogData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCachingColumnValueFromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingColumnValueFromModel(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingColumnValueFromModel(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCachingId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `LogData`(`id`,`uid`,`appName`,`in`,`out`,`proto`,`spt`,`dst`,`len`,`src`,`dpt`,`timestamp`,`hostname`,`type`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `LogData`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `uid` INTEGER, `appName` TEXT, `in` TEXT, `out` TEXT, `proto` TEXT, `spt` INTEGER, `dst` TEXT, `len` INTEGER, `src` TEXT, `dpt` INTEGER, `timestamp` INTEGER, `hostname` TEXT, `type` INTEGER)"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `LogData` WHERE `id`=?"

    return-object v0
.end method

.method public final getInsertStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `LogData`(`uid`,`appName`,`in`,`out`,`proto`,`spt`,`dst`,`len`,`src`,`dpt`,`timestamp`,`hostname`,`type`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 71
    const-class v0, Ldev/ukanth/ufirewall/log/LogData;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 4

    .line 332
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 333
    iget-wide v2, p1, Ldev/ukanth/ufirewall/log/LogData;->id:J

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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogData;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2

    .line 86
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "`hostname`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "`timestamp`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "`uid`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "`src`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "`spt`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "`out`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "`len`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "`dst`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "`dpt`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "`in`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "`appName`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "`type`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string v0, "`proto`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->hostname:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_1
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_2
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_3
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->src:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_4
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->spt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_5
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->out:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_6
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->len:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_7
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->dst:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_8
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->dpt:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_9
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->in:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_a
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_b
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_c
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->type:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_d
    sget-object p1, Ldev/ukanth/ufirewall/log/LogData_Table;->proto:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64105428 -> :sswitch_d
        -0x55936bfa -> :sswitch_c
        -0x21b2c60c -> :sswitch_b
        0x2d3a45 -> :sswitch_a
        0x2d3b7b -> :sswitch_9
        0x577f858 -> :sswitch_8
        0x578039b -> :sswitch_7
        0x57b714b -> :sswitch_6
        0x57d0b32 -> :sswitch_5
        0x57ec9e9 -> :sswitch_4
        0x57ecf5c -> :sswitch_3
        0x57f9670 -> :sswitch_2
        0x3b9f026a -> :sswitch_1
        0x7194962d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`LogData`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `LogData` SET `id`=?,`uid`=?,`appName`=?,`in`=?,`out`=?,`proto`=?,`spt`=?,`dst`=?,`len`=?,`src`=?,`dpt`=?,`timestamp`=?,`hostname`=?,`type`=? WHERE `id`=?"

    return-object v0
.end method

.method public final insert(Ldev/ukanth/ufirewall/log/LogData;)J
    .locals 4

    .line 360
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 361
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v2

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public final insert(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 3

    .line 381
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    .line 382
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p2

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->insert(Ldev/ukanth/ufirewall/log/LogData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->insert(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final load(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    .line 183
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 184
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p2

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic load(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->load(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 2

    const-string v0, "id"

    .line 305
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Ldev/ukanth/ufirewall/log/LogData;->id:J

    const-string v0, "uid"

    .line 306
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setUid(I)V

    const-string v0, "appName"

    .line 307
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setAppName(Ljava/lang/String;)V

    const-string v0, "in"

    .line 308
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setIn(Ljava/lang/String;)V

    const-string v0, "out"

    .line 309
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setOut(Ljava/lang/String;)V

    const-string v0, "proto"

    .line 310
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setProto(Ljava/lang/String;)V

    const-string v0, "spt"

    .line 311
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setSpt(I)V

    const-string v0, "dst"

    .line 312
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setDst(Ljava/lang/String;)V

    const-string v0, "len"

    .line 313
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setLen(I)V

    const-string v0, "src"

    .line 314
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setSrc(Ljava/lang/String;)V

    const-string v0, "dpt"

    .line 315
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setDpt(I)V

    const-string v0, "timestamp"

    .line 316
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldev/ukanth/ufirewall/log/LogData;->setTimestamp(J)V

    const-string v0, "hostname"

    .line 317
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogData;->setHostname(Ljava/lang/String;)V

    const-string v0, "type"

    .line 318
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/log/LogData;->setType(I)V

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

    .line 32
    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public final newInstance()Ldev/ukanth/ufirewall/log/LogData;
    .locals 1

    .line 81
    new-instance v0, Ldev/ukanth/ufirewall/log/LogData;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/log/LogData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->newInstance()Ldev/ukanth/ufirewall/log/LogData;

    move-result-object v0

    return-object v0
.end method

.method public final save(Ldev/ukanth/ufirewall/log/LogData;)Z
    .locals 3

    .line 353
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->save(Ljava/lang/Object;)Z

    move-result v0

    .line 354
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final save(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 2

    .line 374
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p2

    .line 375
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public bridge synthetic save(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->save(Ldev/ukanth/ufirewall/log/LogData;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->save(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final update(Ldev/ukanth/ufirewall/log/LogData;)Z
    .locals 3

    .line 367
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->update(Ljava/lang/Object;)Z

    move-result v0

    .line 368
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public final update(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 2

    .line 388
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p2

    .line 389
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogData_Table;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->getCachingId(Ldev/ukanth/ufirewall/log/LogData;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData_Table;->update(Ldev/ukanth/ufirewall/log/LogData;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->update(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final updateAutoIncrement(Ldev/ukanth/ufirewall/log/LogData;Ljava/lang/Number;)V
    .locals 2

    .line 138
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Ldev/ukanth/ufirewall/log/LogData;->id:J

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

    .line 32
    check-cast p1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogData_Table;->updateAutoIncrement(Ldev/ukanth/ufirewall/log/LogData;Ljava/lang/Number;)V

    return-void
.end method
