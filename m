Return-Path: <usb-storage+bncBD26DNHQRAJRB5OE4SMAMGQEG757FZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646D5B101A
	for <lists+usb-storage@lfdr.de>; Thu,  8 Sep 2022 01:00:08 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id z3-20020aa78883000000b0053e1c45102asf3746566pfe.20
        for <lists+usb-storage@lfdr.de>; Wed, 07 Sep 2022 16:00:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662591606; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuvzBofhapne5D/vJesx+VyXq77C6+b2m7azJSc50Z1SWM9aYSx0hpf/cuFc40i8Pl
         T9yZA7UNICjIjHDA77T8wnV12DAtSoEWLB3J21eIc2VSjI9xNnL1aFXp2IdECFnUYUSv
         4obOQV3oWAU+yNeMmRIDYE/9gsxN9XkNbCkfBcAfhawhnk5taZXtkbHKDZq4AKygaKDP
         NvhdXeaKe2IjcFV9jpiVQnbc0EaWNCz11VsWC+RLKaXoOPxT+fApixXCrUWQJMfyppsi
         0Du3XdTTFmAb6tuC3VCdegshtz8zRiUFBi/u59qLEg3s3yQTqlZJoG3TXv/oPVaYHoRH
         B0RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=llKx/rBZa8qmpp1lLeinSasj+eeEOhtsRkh5GDtv32Q=;
        b=l4yvDM3f3bvca8AjOstvACaUm4rseRVC8zx+geiVZwo8iEvXw/eYZtVVxWe7xSK6ZR
         w0eY60XsaQL9i0+vLAP6SrerVlU0+1dt0jkdcGA99NltxPIfbYxEjZM9aQ5ILoYZxNZF
         KP8BITVGob+qiY5nNpdRWLVi6nRABLWM9U2N1tI7ZHzeCBCFyZg3cf57KWbFYDIpnX0L
         HtA1P7m01P4fl3J23rxBqke42GLlCiDVQug/zTGc6iXhZcc3xLKWi9+fG8g1hmfBt2tJ
         Qub6jEVJE3348AtcMeo3MSQEldqAJ8mRNGSJ6B0nRVaUPrC7M7Q+UP32DXaq/1E7EnYu
         GRvw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=H5l27itb;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=llKx/rBZa8qmpp1lLeinSasj+eeEOhtsRkh5GDtv32Q=;
        b=e97BMy2k1pQgjI8Qg692D8+/ZUdMg2Lk1aV0eiESZ/xc+NGUvdo31sU0Ai10Q2lCdv
         YkmhWMtUsNBJ4qFWX58u7/GWfqROxefkYdoFREzbxY/lMlx6uAw5nawPGhTA/hT1xBgw
         4QgQqi3nnAWhw3rcHhxjgMUTEnG0s0Rl0ps80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=llKx/rBZa8qmpp1lLeinSasj+eeEOhtsRkh5GDtv32Q=;
        b=eVH44qVb7toD1RFylRtjFIn54bk6w9I/XwmYgj1OJNMXaks2Cscgu1DlrmMQq8belH
         R32gjO5H6AhobIV0+EnUR7dpQ23S8HwRUAdOc+DKH9hjA+/VZ6Qp9XWYCf7RM+F49RKi
         1edj3rlzEkQz0ocdYIIrYr2U3yu1G1Id+LAFqh0pwqNOz98owgXVDnVPjGnRLyiYW41B
         HZLgZ0iUI7Z39uTnvTKIhfDedp2QVsLKaHSUPEyI0ixTt/SBQyS/RhbdfIkgAHSd0U34
         7TLoaZ+S4Y4uz9fRbK0w65SUH+cwW/5PS/Qx+hgePkC0GWzLSyEQZIJeuy8liJTocbLd
         tYAA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0ANDQBBWjjhPQmY1vLsEyxB8SoGeLiCxbRmeJ7eoBBDu6odfjr
	X+brXePkrLjQCJZey08C8zns2A==
X-Google-Smtp-Source: AA6agR5x0Hu95IpuGTMbVwR6kBrUijaJW1XoRzaGkQBpQcQkAp6BANPLqIXL8JD5ySLk4xKmyLfLZw==
X-Received: by 2002:a17:90b:390:b0:200:4c58:efb with SMTP id ga16-20020a17090b039000b002004c580efbmr787780pjb.97.1662591605429;
        Wed, 07 Sep 2022 16:00:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:234d:b0:1fe:692:faa0 with SMTP id
 ms13-20020a17090b234d00b001fe0692faa0ls258068pjb.0.-pod-prod-gmail; Wed, 07
 Sep 2022 16:00:04 -0700 (PDT)
X-Received: by 2002:a17:902:d2c7:b0:176:c8a4:2f2 with SMTP id n7-20020a170902d2c700b00176c8a402f2mr6208867plc.119.1662591604287;
        Wed, 07 Sep 2022 16:00:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662591604; cv=none;
        d=google.com; s=arc-20160816;
        b=bH2K6TBTxCDkQ38mrLCvTocGf9/AsExS2PKCDhLlOTeKFUCYDeCf7bKL9/relKjXo2
         zq3dq0GY94UKw31lR9ucpAZGc4UNZr3fPcweVHyLylewIvY+HQ2Y7M0BHCEw86TD45z9
         FxGMKUyzlN0zvoZPNaEouEhWoDyF1OAUia8m/1VjZwz+pXGh3UevyxI5Eh1ZiNX+G51w
         qPo3iFOvM1D66LHOuW+MYP/gfygg+GekeuqC68Efh7AlCdE+xSbgh8RmT53Nn1QzOiUj
         +zUuP7+cR2POhLU199zfAKKDSSsu43+JOPdWVWaWoJaqSEbjSf/18tU36zwRgz08ODFF
         uNNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=DAR5ouwdYixObZ7shUGeErkhJF/4X71+KfPQMKkpomE=;
        b=llQTjgMblBpSs1gO9EV2gxMsws8QJn1fba/o9fmckocP4w1XTekXWm7sNFy766Q52j
         1d/3iR6F6dHac7iGza/P8v6ZVDoTzKUuQ/L8+kmgoGD4Ve7uvOBF/dQdd8LHAYCCr2cO
         jWxzWEpZVwjJvDeSWLzUZvwXvoeQv39AYv7DuLYNenVAzTyFEt83ldgWe42L3/tC+KU2
         yDfI4W6bcv7ZTXH7CVxqpuf7Spfk9fQ9wfKjU0KlnElZtP555KZyPUOjPbjEVhdSg1QJ
         5wh6Dm9hXIe1sD3lploraTIgkjkpLdT+LzYy5kfEN7nl8f6HWs1lch2ss79r0GUADd43
         RMvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=H5l27itb;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15114.mail.126.com (m15114.mail.126.com. [220.181.15.114])
        by mx.google.com with ESMTP id np2-20020a17090b4c4200b001fdfc3ea521si425493pjb.143.2022.09.07.16.00.03
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 07 Sep 2022 16:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) client-ip=220.181.15.114;
Received: from 0V5ZS2WE6VIK6H0 (unknown [117.143.49.84])
	by smtp7 (Coremail) with SMTP id DsmowAAnVZg8IhljK0OZBA--.22197S2;
	Thu, 08 Sep 2022 06:59:08 +0800 (CST)
Date: Thu, 8 Sep 2022 06:59:09 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"zenghongling@kylinos.cn" <zenghongling@kylinos.cn>
Cc: "Greg KH" <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v2 1/3] uas: add no-uas quirk for
 Hiksemi usb_disk
References: <1662519246-18397-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxjRna/qihbKPEge@rowland.harvard.edu>
X-Priority: 3
X-GUID: BECF0879-3842-4256-A201-6D298EE7D6CD
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022090806580941868521@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DsmowAAnVZg8IhljK0OZBA--.22197S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Aw45Gw4rZr1UZF18tF4rAFb_yoW8tr43pa
	4v9rs3CrWkGF1Iy3Z7Zr4UCryrXa95JrW8K342kw4DXF4rZa4qqrZxAr4kWryxJr47GF4F
	vF4qvr4UGF4DC3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U01v-UUUUU=
X-Originating-IP: [117.143.49.84]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiJB110FpEFka7ugAAsT
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=H5l27itb;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as
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

Sorry, My git send-email suddly can't send patch,
I will fix this problem as soon as possible and send it to you

Thanks!

zhongling0719@126.com
=C2=A0
From:=C2=A0Alan Stern
Date:=C2=A02022-09-08=C2=A001:15
To:=C2=A0Hongling Zeng
CC:=C2=A0gregkh; linux-usb; usb-storage; zhongling0719
Subject:=C2=A0Re: [PATCH v2 1/3] uas: add no-uas quirk for Hiksemi usb_disk
On Wed, Sep 07, 2022 at 10:54:06AM +0800, Hongling Zeng wrote:
> The UAS mode of Hiksemi is reported to fail to work on several platforms
> with the following error message, then after re-connecting the device wil=
l
> be offlined and not working at all.
>
> [=C2=A0 592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 u=
as-tag 18
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inflight: CMD
> [=C2=A0 592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 =
6f 88 00 00
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 04 00 00
> [=C2=A0 592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 ua=
s-tag 1
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inflight: CMD
> [=C2=A0 592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 4=
4 1a 88 00
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00 08 00
>
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
>
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> change for v1
>=C2=A0 -Change the email real name
>
> Change for v2
>=C2=A0 -Change spelling error
>
> ---
>=C2=A0 drivers/usb/storage/unusual_uas.h | 7 +++++++
>=C2=A0 1 file changed, 7 insertions(+)
>
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unus=
ual_uas.h
> index cdff7dc..a6bf87a 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
>=C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>=C2=A0 US_FL_IGNORE_UAS),
>=C2=A0
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
> +	"Hiksemi",
> +	"External HDD",
> +	USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +	US_FL_IGNORE_UAS),
> +
>=C2=A0 /*
>=C2=A0=C2=A0 * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in re=
sponse to SCSI
>=C2=A0=C2=A0 * commands in UAS mode.=C2=A0 Observed with the 1.28 firmware=
; are there others?
=C2=A0
Acked-by: Alan Stern <stern@rowland.harvard.edu>
=C2=A0
I didn't receive v2 of the 2/3 patch.=C2=A0 Did you forget to send it?
=C2=A0
Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2022090806580941868521%40126.com.
