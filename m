Return-Path: <usb-storage+bncBCHZVHVFVMARBQUU4XWQKGQEUEJRB7Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A280E9831
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 09:30:59 +0100 (CET)
Received: by mail-ed1-x547.google.com with SMTP id f22sf1062257edj.14
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 01:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572424259; cv=pass;
        d=google.com; s=arc-20160816;
        b=doM+N8ykIHx7dSgDsJIP4Z9ZZf6rrIH3gGMC/MB20HxsAw0kwCEuPxA0a/An8e0VVn
         vq8dPH5Nwc4GMglbNxjnBLgrmBINDNzX+vO6+7jU42UZbpoDpBMyAfyrbF0aDl2NpR9A
         clGFXGeK2o+ow78A3lx3VxyErAvXc3q6XO0bjpg7HZOdOO85dfQu7+ZA41M/oJ7lIaGF
         nJwwLF3SzvXGIsG9d5uzq1L6SP/dP7vBJlMTd3m0zpS9Nmq4VL4VJivEweUX9yAfromG
         h3IVSptcxMJ6VJKchG0vXewri2wnN1ahfqHdf4pgm299ZnWnrHAZ2F9wvDmHQH0WLAV4
         agiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=rv0Opbh/WpyxLi4jeb9Qk94ntMFvQPJcQvDX4qoV2Rg=;
        b=vgO/Yv+cb0lQ/2/3IMUFvhaeQUqPC1f33NK4tzMY+C8AyPQdPL5/9kJn6ExRJpM4Ty
         ulQb38MJdlSQmfR1TXiSRmDCetaSXjywU9xDE80XOQh/X6NVFR/BUSEmPe5OUuMP+g48
         oKgC0P1cL3xIfUS1iW1G91sn3wuh5dUHro7munBF7d6clR9qSqJ/K/DlE1DJAH1QhMsC
         Xvy0QS0CIxmRT4i6cNyPfY7E+gUaXAj0MzZPc0LxQc83ixiEAKn9eczL+L51HXAqtWxG
         j+1sqbf18RBclzKtNwsJUbKLm14BSBX32DiYBUjbE5JJBAe9PoP1dx6IOdqtXblQOEjX
         1Mhg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rv0Opbh/WpyxLi4jeb9Qk94ntMFvQPJcQvDX4qoV2Rg=;
        b=VkS0i+ZaP03j+0Yb4RrQKz3F43nTo5yip/dgGOMziA/X1v0pbwkzcpbUHEgaz+RmYL
         POQ92tkOVwnuuIJAEDmBzY0S8AFmjWr4W0PkIHzCbIIGVx7/fg7xsTKxS0GwV0Lki+te
         GlcXrLgBZ3kAaoEiDRknFIWcAavqRK24MfnQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rv0Opbh/WpyxLi4jeb9Qk94ntMFvQPJcQvDX4qoV2Rg=;
        b=FzBgdut1KfXDi2+0f7LuTlbemUhIr+Ouubg6HX59S4FkQOhOL6AwpPBNTdemnWw4AW
         nfZO3p3UplRtlqeg6T+QMLZv48earQWuB1OnsnJ5COsU7q5qd0x63jOqHetrnNfva55l
         fddRQlQr4Lk2JVxnrbn3A725CIyKxjtaZMuTmYJkPFh2RMfsgRaMC4HKCQ+/c3PpP8Wv
         QWSYlD+7g5/rrSKWZEX/aSQcWu4Yd4ViZ8AxlYWIEcGmaQelR9mlPNL5jD8QrhT7bi9K
         vGV7OwJj1jhDXEYy+/Xbmmv7+A8JJd1nVjb8D+ycIOHN351j8QlTOBmDX7PcT6ak8sqC
         sF/g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWK55hgj7KAGhu8aH6PzlQxJ+JIz0iRJSwfNKWzCUrak6eAljtd
	wOOduinZdkTZNvozNrIrOEOZjA==
X-Google-Smtp-Source: APXvYqx18PrxTaxD/0LUkehxPZNfPT25X2MnsEcOn+ohfnOwTgHXWuscqOVVFjr0WiuSnJtg0eACVQ==
X-Received: by 2002:a05:6402:32e:: with SMTP id q14mr16513052edw.53.1572424259164;
        Wed, 30 Oct 2019 01:30:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:cd1e:: with SMTP id z30ls5847568edi.15.gmail; Wed, 30
 Oct 2019 01:30:58 -0700 (PDT)
X-Received: by 2002:a05:6402:1203:: with SMTP id c3mr21003381edw.136.1572424258259;
        Wed, 30 Oct 2019 01:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572424258; cv=none;
        d=google.com; s=arc-20160816;
        b=dPbpUMvTDH7JthpeOxJjR/gZBRJ0ZYc1BdTI1TRcacKNezpz50o2J7vKopel7yKYix
         3yjr75j17luaGc9gvrwU47t50r6A/Kfy+aVfZlcqqew0x/GbxBXb2BTwRUSHILQfqrUo
         UKK7O/NSg6qrG/gRgmD+dPVzMIkahyrtXGQK70NbgbOJROtCXysz1ftAjRMCx/p9SZjo
         pufFevRBfG4DmtrJgPlIsbYyDQdRJrxHd+5ZiOMoxWmxsV1yJ3VCR4xM7lneEUXqfgvr
         vp9ZbkHjuZ88S8ENond86XZyhQLw1iUUKPwauoqYzf2UdieCCXmXE11iRCknj+je3Co/
         WF0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fJgjJozX3Pvi2m8ld80DWBcInxr+uGIuwDcKbj2cGtM=;
        b=hckOaURehykNwv8If16T6LKRa37pNIE4Op2ThzcHDcrqytPb1Rqcm7Tkva3+96AQ5v
         MxSutZCpzmtP5DcNzcJGfquM0JHbMR4+PBWepfnXCSAis1TsfGGGhudj+PrQ9zwQxH0G
         y1N5/YAkknYoxIYZ4d+UkdY+pLwPZ9uzoQXreJEWWVnvoe3pwW97jmH7ar1aNb7PcCyI
         NlUbKZnZudzS5x4ExmtgW58E/KJIOX/TW5zqsdfKV5/n2crGLusCFu54W/oubfDjhdDB
         Md3i1vIZ7w6GT0Jzn0ps8GjXjVBfX6rDhcnUy+9cPmxeQEbUiOXFNNBjeAAdVgXQSJgz
         rmCw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id p29si1078112eda.104.2019.10.30.01.30.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 01:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 5B53EB2C6;
	Wed, 30 Oct 2019 08:30:57 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Bart Van Assche <bvanassche@acm.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <4ee551d0-27a6-b516-ade0-d477fd93bad8@suse.de>
Date: Wed, 30 Oct 2019 09:30:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On 10/28/19 9:38 PM, Bart Van Assche wrote:
> On 10/28/19 3:57 AM, Damien Le Moal wrote:
>> struct scsi_cmnd cmd->req.resid_len which is returned and set
>> respectively by the helper functions scsi_get_resid() and
>> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
>> of these helper functions.
>> [ ... ]
>> -static inline void scsi_set_resid(struct scsi_cmnd *cmd, int resid)
>> +static inline void scsi_set_resid(struct scsi_cmnd *cmd, unsigned int=
=20
>> resid)
>> =C2=A0 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd->req.resid_len =3D resid;
>> =C2=A0 }
>> -static inline int scsi_get_resid(struct scsi_cmnd *cmd)
>> +static inline unsigned int scsi_get_resid(struct scsi_cmnd *cmd)
>> =C2=A0 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return cmd->req.resid_len;
>> =C2=A0 }
>=20
>  From the iSCSI RFC:
>=20
>  =C2=A0=C2=A0 SCSI-Presented Data Transfer Length (SPDTL) is the term thi=
s document
>  =C2=A0=C2=A0 uses (see Section 1.1 for definition) to represent the aggr=
egate data
>  =C2=A0=C2=A0 length that the target SCSI layer attempts to transfer usin=
g the
>  =C2=A0=C2=A0 local iSCSI layer for a task.=C2=A0 Expected Data Transfer =
Length (EDTL)
>  =C2=A0=C2=A0 is the iSCSI term that represents the length of data that t=
he iSCSI
>  =C2=A0=C2=A0 layer expects to transfer for a task.=C2=A0 EDTL is specifi=
ed in the SCSI
>  =C2=A0=C2=A0 Command PDU.
>=20
>  =C2=A0=C2=A0 When SPDTL =3D EDTL for a task, the target iSCSI layer comp=
letes the
>  =C2=A0=C2=A0 task with no residuals.=C2=A0 Whenever SPDTL differs from E=
DTL for a task,
>  =C2=A0=C2=A0 that task is said to have a residual.
>=20
>  =C2=A0=C2=A0 If SPDTL > EDTL for a task, iSCSI Overflow MUST be signaled=
 in the
>  =C2=A0=C2=A0 SCSI Response PDU as specified in [RFC3720].=C2=A0 The Resi=
dual Count MUST
>  =C2=A0=C2=A0 be set to the numerical value of (SPDTL - EDTL).
>=20
>  =C2=A0=C2=A0 If SPDTL < EDTL for a task, iSCSI Underflow MUST be signale=
d in the
>  =C2=A0=C2=A0 SCSI Response PDU as specified in [RFC3720].=C2=A0 The Resi=
dual Count MUST
>  =C2=A0=C2=A0 be set to the numerical value of (EDTL - SPDTL).
>=20
>  =C2=A0=C2=A0 Note that the Overflow and Underflow scenarios are independ=
ent of
>  =C2=A0=C2=A0 Data-In and Data-Out.=C2=A0 Either scenario is logically po=
ssible in
>  =C2=A0=C2=A0 either direction of data transfer.
>=20
> If the residual is changed from signed into unsigned, how is a SCSI LLD=
=20
> expected to report the difference between residual overflow and residual=
=20
> underflow to the SCSI core?
>=20
You don't have to. To quote RFC 3720 page 122:

      bit 5 - (O) set for Residual Overflow.  In this case, the Residual
        Count indicates the number of bytes that were not transferred
        because the initiator's Expected Data Transfer Length was not
        sufficient.  For a bidirectional operation, the Residual Count
        contains the residual for the write operation.

IE the 'overflow' setting in the iSCSI command response is an indicator=20
that there _would_ be more data if the command request _would_ have=20
specified a larger buffer.
But as it didn't, the entire buffer was filled, and the overflow counter=20
is set.
Which, of course, is then ignored by the linux SCSI stack as the request=20
got all data, and the residual is set to zero.
Then it's left to the caller to re-send with a larger buffer if=20
required. But it's nothing the SCSI stack can nor should be attempting=20
on its own.

As such I think the patch is correct.

Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke            Teamlead Storage & Networking
hare@suse.de                              +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/4ee551d0-27a6-b516-ade0-d477fd93bad8=
%40suse.de.
