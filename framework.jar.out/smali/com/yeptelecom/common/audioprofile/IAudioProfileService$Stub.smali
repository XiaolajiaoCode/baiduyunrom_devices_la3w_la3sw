.class public abstract Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;
.super Landroid/os/Binder;
.source "IAudioProfileService.java"

# interfaces
.implements Lcom/yeptelecom/common/audioprofile/IAudioProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yeptelecom.common.audioprofile.IAudioProfileService"

.field static final TRANSACTION_addProfile:I = 0x2

.field static final TRANSACTION_deleteProfile:I = 0x3

.field static final TRANSACTION_getActiveProfileKey:I = 0xa

.field static final TRANSACTION_getAllProfileKeys:I = 0x6

.field static final TRANSACTION_getCustomizedProfileKeys:I = 0x8

.field static final TRANSACTION_getDefaultRingtone:I = 0x22

.field static final TRANSACTION_getDtmfToneEnabled:I = 0xf

.field static final TRANSACTION_getEmergencyToneValue:I = 0x13

.field static final TRANSACTION_getHapticFeedbackEnabled:I = 0x12

.field static final TRANSACTION_getLastActiveProfileKey:I = 0xb

.field static final TRANSACTION_getLockScreenEnabled:I = 0x11

.field static final TRANSACTION_getPredefinedProfileKeys:I = 0x7

.field static final TRANSACTION_getProfileCount:I = 0x5

.field static final TRANSACTION_getProfileName:I = 0x15

.field static final TRANSACTION_getProfileStateString:I = 0x14

.field static final TRANSACTION_getRingtoneUri:I = 0xc

.field static final TRANSACTION_getSoundEffectEnabled:I = 0x10

.field static final TRANSACTION_getStreamMaxVolume:I = 0x21

.field static final TRANSACTION_getStreamVolume:I = 0xd

.field static final TRANSACTION_getVibrationEnabled:I = 0xe

.field static final TRANSACTION_isActive:I = 0x1f

.field static final TRANSACTION_isNameExist:I = 0x9

.field static final TRANSACTION_isRingtoneExist:I = 0x20

.field static final TRANSACTION_listenAudioProfie:I = 0x23

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setDtmfToneEnabled:I = 0x19

.field static final TRANSACTION_setEmergencyToneValue:I = 0x1d

.field static final TRANSACTION_setHapticFeedbackEnabled:I = 0x1c

.field static final TRANSACTION_setLockScreenEnabled:I = 0x1b

.field static final TRANSACTION_setProfileName:I = 0x1e

.field static final TRANSACTION_setRingtoneUri:I = 0x16

.field static final TRANSACTION_setSoundEffectEnabled:I = 0x1a

.field static final TRANSACTION_setStreamVolume:I = 0x17

.field static final TRANSACTION_setVibrationEnabled:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setActiveProfile(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->addProfile()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->deleteProfile(Ljava/lang/String;)Z

    move-result v3

    .line 71
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->reset()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_5
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getProfileCount()I

    move-result v3

    .line 86
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getAllProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 94
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 100
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 102
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 108
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getCustomizedProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 110
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 116
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    .line 120
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_a
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getLastActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 148
    .local v3, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_d
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getStreamVolume(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_e
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 176
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_f
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 186
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_10
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 196
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_11
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 206
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_12
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 216
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_13
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getEmergencyToneValue(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_14
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 236
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 242
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 259
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 264
    .local v2, _arg2:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v2           #_arg2:Landroid/net/Uri;
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/net/Uri;
    goto :goto_1

    .line 270
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/net/Uri;
    :sswitch_17
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setStreamVolume(Ljava/lang/String;II)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 283
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_18
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v1, v6

    .line 288
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_9
    move v1, v5

    .line 287
    goto :goto_2

    .line 294
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_19
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v1, v6

    .line 299
    .restart local v1       #_arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_a
    move v1, v5

    .line 298
    goto :goto_3

    .line 305
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v1, v6

    .line 310
    .restart local v1       #_arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_b
    move v1, v5

    .line 309
    goto :goto_4

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1b
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v1, v6

    .line 321
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setLockScreenEnabled(Ljava/lang/String;Z)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_c
    move v1, v5

    .line 320
    goto :goto_5

    .line 327
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v1, v6

    .line 332
    .restart local v1       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_d
    move v1, v5

    .line 331
    goto :goto_6

    .line 338
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setEmergencyToneValue(Ljava/lang/String;I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_1e
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 360
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_1f
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->isActive(Ljava/lang/String;)Z

    move-result v3

    .line 364
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 370
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_20
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 373
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 378
    .local v0, _arg0:Landroid/net/Uri;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v3

    .line 379
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v3           #_result:Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_7

    .line 385
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_21
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getStreamMaxVolume(I)I

    move-result v3

    .line 389
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 395
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_22
    const-string v7, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    .line 399
    .local v3, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v3, :cond_11

    .line 401
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 405
    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_23
    const-string v5, "com.yeptelecom.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    move-result-object v0

    .line 415
    .local v0, _arg0:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
