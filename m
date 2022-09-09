Return-Path: <usb-storage+bncBD26DNHQRAJRBS745SMAMGQEJ562LLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id A96E85B38D7
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 15:23:25 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id 135-20020a63018d000000b00430673f7922sf969740pgb.6
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 06:23:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662729804; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFIMU6J980bTW0VeoFQPOyxFk1WpuCdkfnUIdKTZXZiWJggYzskSy712GKcnmXK6Q5
         kE4aK9eagQnDyItAHRPiRjkGC0QDAFXNEIa4C3PIReOlaPEB0Jh+xQEyjeh0WiBeCAuC
         y/zOQRiKEP9PPKIqH/A+V2oAx6JkuGyJL0e+7/9CJWkM7a6I0xm9HLhJWH5H/p9uFe30
         Ya0OYrnZpHz7PIgOhDmrfFUApQIvSrsVuYTfPTej9AuUMFS6ha6kYO8ycRlGSO5QnqIM
         3puli8kfdRcEsdpr9HM5nzJHEs7Z2m1PmI/HLfMufBoLjSCQoCJC3sgWRNbxEXQZQHlN
         i18A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KqpLKaDLYhYjsDbEtAbj8vEaXIbNDcqB3A/gI3NN6a0=;
        b=LPaoVTyf07wOJMTrPHq9vlOf48F9d/0FNKw4Ox0zH7UqFbWuqS7QwKio1BbrLf6Ase
         E3+ltxFK0cD0IWSbzWRJPBQFG2TdI216mHqIj7nx/uVy0cJEcniNDDZ1xDkcyxQtU7ss
         OBLxoVc6V4Qkoz0jm2S9jhbGGsGb0NOK7GloblgMXGrS0XTE6JOq3+IedxLe0QVGOTT+
         u3SZFr4qG4Kvp9nAPBfz2SqZWLW3KwRtjHspTu1v0RTDgFDlt8F66t13QVypIn2eIa1V
         UfNdXDmfqPL65pOrprEeRkrPO0mQrMz/356UXdN1PL4NNfDAC0+Ow6fsaSNUyS1asBFn
         PtrQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="n/xUH6Dc";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=KqpLKaDLYhYjsDbEtAbj8vEaXIbNDcqB3A/gI3NN6a0=;
        b=DJazStfi0VQX32n9GNcTlZzaz3g+OPTzX422MWvCMs70hreXruVvmTd7L40xxYBo7+
         VpJSmojXMpsRXLxJkUyoS11o0E+Oy1huG28pmDLDLfg4tnfOva+R+sN7feFdgqXr0CwM
         tUHQDmbNqYz51gQqTR7YPLPWGlpr3xLoKZsCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=KqpLKaDLYhYjsDbEtAbj8vEaXIbNDcqB3A/gI3NN6a0=;
        b=j3QdF7BGCY+v6QNETpPgysVefO6RC5X4f+SdAv8x4UsB20eDt+Ui41Z/TzY0EZKGzc
         PGGvPmJ5GchqX2y0yNEHf2B6J2Ks/Nr3TE9UwLUoRur9yjakpgmFpGcT/VXUQp7JAIfr
         beiQAD11beMK5J2iKS9+kOz5elC1f4agM+tGtlRGs801j+1achnLvD8BGCo6KG4jfwsF
         iPEOtwFA4WUoEMpQNWsboGTDEQCqdkkrCHxjKL/cwlpWz+n6abbI3iV3iB0CfNxRzLyQ
         sxL/i7rQa2rrZRCm7AxOjizrQ91kgmnKz1h1b4zLddY12oJlB8n25L5J5ktDufvHqawJ
         ekBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0iv3Op2SD8Q+uX63tGJJdheJ25Ka62+aJ4VVppUXPCkzYa7FJc
	3O9sh7aSDW8P1PxhBPjclzQ5VQ==
X-Google-Smtp-Source: AA6agR4ix+DkLtE8tAdoWWZD0shG9bngh5ugKwL7dC/AU7v++Q/sbVHDMdISyo70ppS6TVcK21Bv2w==
X-Received: by 2002:a65:42c8:0:b0:41a:8138:f47f with SMTP id l8-20020a6542c8000000b0041a8138f47fmr12391467pgp.476.1662729804054;
        Fri, 09 Sep 2022 06:23:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7610:b0:16c:2ae8:5b94 with SMTP id
 k16-20020a170902761000b0016c2ae85b94ls3293203pll.0.-pod-prod-gmail; Fri, 09
 Sep 2022 06:23:23 -0700 (PDT)
X-Received: by 2002:a17:902:e402:b0:176:8787:92d1 with SMTP id m2-20020a170902e40200b00176878792d1mr13650605ple.157.1662729803170;
        Fri, 09 Sep 2022 06:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662729803; cv=none;
        d=google.com; s=arc-20160816;
        b=FIxONmAi7MKX7Jj601FsOwLvQHIZVOjX//ww/xe1zx4GlhYMX2n3osYS2fTq0A2dHG
         HCSQ5wwRzfmoBlFy7S7tTce3FQ+GeiqpqljE7eWWLqzQ6NAzDDZNEeD3UgtDCaRtKxHX
         GXbXOuEPgJ86EL0u1SaerYMz/FHXpeBRNm0FBtJx7DeSrMEvtXKKHD7sikyyqCPC0oDV
         HZmVcPPkRqFazmwu9sKToXVQRtBlZtUE948IvK1hfyxi+RDe8DqCTk+yHl4XwJe8JhXU
         GGb9kfjnYotWsDMGq4i7qdcIbbhbQk3umGN4h+aXw9xJxsd7qgOEW3w7ylZPZKPCgWF5
         nRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=MDIrPiPBDHsw3XzfJ4ODObTkhyGjxa5PB/x5giGDUeI=;
        b=rZ9lPmvOz2f2PQ+3FgzJL+fDigc99FvlHmnmVNAgwEpvi7uT9rH5Qa8mfV81kRuCrn
         Orx257YfA7xo80cgn9CLtTwUsuhrgu8DdBf/HEkFDygXeU4urneydW9FLw46tU1KydVc
         5GTIa6OztayAMxfC52VpfAMKcxXFoILV/0pGrxNtqG1BjBGcohVAlVjO699BMeLvpSMU
         2VztRF93BiS4MMZifSoyoZHF+NvEsI/gu7VNjrfl8e2rFFCLsi372mhm+NOagnxF3yA7
         5m9vNBMyJYKlzoQF+KK+guV9rixY/NaPKNrixNgkqjDila3JFz2v4WmsefEZ2Aqoh4mY
         +yvw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b="n/xUH6Dc";
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15111.mail.126.com (m15111.mail.126.com. [220.181.15.111])
        by mx.google.com with ESMTP id 10-20020a63194a000000b0042ba115ccaasi565979pgz.269.2022.09.09.06.23.22
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 09 Sep 2022 06:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as permitted sender) client-ip=220.181.15.111;
Received: from 0V5ZS2WE6VIK6H0 (unknown [117.143.49.84])
	by smtp1 (Coremail) with SMTP id C8mowAAXAXUPPhtjlmMuBQ--.17167S2;
	Fri, 09 Sep 2022 21:22:25 +0800 (CST)
Date: Fri, 9 Sep 2022 21:22:25 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"zenghongling@kylinos.cn" <zenghongling@kylinos.cn>
Cc: "Greg KH" <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
References: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxsucjOnUkb8NxKo@rowland.harvard.edu>
X-Priority: 3
X-GUID: C1798030-29D6-43AA-AC3A-125C58E3E45D
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <202209092121245768249@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: C8mowAAXAXUPPhtjlmMuBQ--.17167S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KF18Kw15Xw13Jr4DJry5Arb_yoW8uw47p3
	4DKF95CrWkGF1IvF17Jw47AryrXanayFWrK3s29w17Za1Sva4jqFnrKr48Wr9Fvr47Wa1Y
	vF4vvFW7KrWDGaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziSdgAUUUUU=
X-Originating-IP: [117.143.49.84]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiuRJ30FpD+ghOXAAAs1
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b="n/xUH6Dc";       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.111 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

Sorry , I tested it work well on Win7, not good on Win10.=C2=A0
I don't have Mac OSX system. We always work on linux=C2=A0environment.
Need I resend the version V5 for patch 3 =C2=A0cancel "acked by" ?

Thanks!

zhongling0719@126.com
=C2=A0
From:=C2=A0Alan Stern
Date:=C2=A02022-09-09=C2=A020:15
To:=C2=A0Hongling Zeng
CC:=C2=A0gregkh; linux-usb; usb-storage; zhongling0719
Subject:=C2=A0Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
On Fri, Sep 09, 2022 at 06:48:50PM +0800, Hongling Zeng wrote:
> The UAS mode of Thinkplus is reported to fail to work on
> several platforms with the following error message:
>
> [=C2=A0=C2=A0 39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for =
disabled
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 endpoint or incorrect stream ring
> [=C2=A0=C2=A0 39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 0000000=
0 00000000
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 1b000000 05038000
>
> Falling back to USB mass storage can solve this problem, so ignore UAS
> function of this chip.
>
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
=C2=A0
I never sent you an Acked-by: for this patch.=C2=A0 In fact, I asked you
questions about it which you haven't yet answered.
=C2=A0
Specifically: How do Windows and Mac OSX work with this drive?
=C2=A0
Alan Stern
=C2=A0
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>=C2=A0 - Change the email real name and the code worng place.
>
> Change for v2
>=C2=A0 -Change spelling error.
>
> Change for v3
>=C2=A0 -Add acked-by
>
> Change for v4
>=C2=A0 -Fix version error
> ---
>=C2=A0 drivers/usb/storage/unusual_uas.h | 7 +++++++
>=C2=A0 1 file changed, 7 insertions(+)
>
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unus=
ual_uas.h
> index 8a18d58..156e89c 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
>=C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>=C2=A0 US_FL_NO_ATA_1X),
>=C2=A0
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> +	"Thinkplus",
> +	"External HDD",
> +	USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +	US_FL_IGNORE_UAS),
> +
>=C2=A0 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
>=C2=A0 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
>=C2=A0 "VIA",
> --
> 2.1.0
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/202209092121245768249%40126.com.
