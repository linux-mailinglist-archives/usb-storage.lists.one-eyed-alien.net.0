Return-Path: <usb-storage+bncBD26DNHQRAJRBMOD4SMAMGQEDUKW6AY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC425B100C
	for <lists+usb-storage@lfdr.de>; Thu,  8 Sep 2022 00:56:51 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id q6-20020a17090311c600b0017266460b8fsf10678954plh.4
        for <lists+usb-storage@lfdr.de>; Wed, 07 Sep 2022 15:56:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662591410; cv=pass;
        d=google.com; s=arc-20160816;
        b=G04hzP46PBsCXxw1cfZ1idsweeFbgFb6OKCoT7K/k3tKzwV/xStYlwwaURK7jlF/3P
         LTXqm3eYPZGwfKMnJPqcpdloilHcKXvIb5IH0jyRMn07M66LUstZgcmzN/n+AbUG47vf
         ewzhF/Xpn8MgwCt8Bb2wllCzZpkEhi/Vso8HHC0T6IAZGtLsswwhb7QvSud7NBEQGmOG
         WUtMGEebDC7dOxkLv9VLbg0PGAkbybFjS50ASjsVBQSxe2FtfXZM/jpFE90O3/aswXN2
         gh2Ga1fJkTfuqcQ7Ud+ZL6RwMiU4lDolrxgQf+rhIx5uv/IhGnCD3F2XHYcB79uLa5tC
         oj8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oX5M0XYQvCKj3H5HyfKN7THYoK401okNxE7uO69wCiM=;
        b=h7VG6ezt3IeLb+GaeCNRDFteay7D24r7tWxrTbQjnC75Tb0arKYC8vrzfokVIlZTC/
         YasNUMiiEglK3KxDC+6KYJYLAQyZEWMw72RGuVpNZbw3SG8VXygWJKTZhcrsoy5N0BEw
         MiASKXzjxTOzadcLjWykiW1n77/046k4PFwcV+oexj5v0zV5W3jl5BT6K77PDIhuLyeE
         M8Xu6/hWQDftwpJTQuJ2BZfIP+Nhi2SPNf7fvSd12atnnR5WT5K5hGMG0TwJETWF0Mej
         kxmuE4mkh3gVdB3ffF6ZF4gzRgotlqPyg3RlvsCT5AtbMaB5UcPe6xztsyveEgNvUgQY
         xCFg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=m2qLDFLP;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=oX5M0XYQvCKj3H5HyfKN7THYoK401okNxE7uO69wCiM=;
        b=fTFt2L/xcgVV9UE7RXdrhuKQPkLoj3XHMd/TZ20vyM/QZHY6qwLM8aVViGTHW6irQI
         5O5KgaQSshMPycrVsI8gAscl8JwusVLe8irneir2s69nAANYSxSP6jFIlPVqjUNEV83F
         ao8Av++uI0Izxf7jz01fV6lBmmlY5DHdaHGHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=oX5M0XYQvCKj3H5HyfKN7THYoK401okNxE7uO69wCiM=;
        b=ZCp49GKRUARDUPrjZd2n6yhQo/VQv6VbWIp8oOPbmcCsDOL5erLMrT9h8a+EMaKrG7
         kvA2MWu55SXqKTOv2KDBbWEZyHS1qe9aO9t1Qrh+d7AwfRTGiyEFTx5ONrL8/abgBrhT
         wFbviXw1T8s2FbsA+L/WP0BVCTsAg48aVKvG03idWEy+OZXAwgdSj5uVhcBzSAcV4Dn/
         07P+STPeqA+N1kUhvL2vQ0eosSZtVT94BFuhny7oCHsC4gpGORDgssuB8+H3r12xDm6l
         sbUJ5cbs3zDd3+tsDF/0ojJeB52QUHbewDFkNrrBBuokxvCVY9eQLzqJhgro0hJB7ALa
         pbIA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1HnECWC6PUoSVfXs9rFBElCujZDbEiKOzgAySEpfZZy31ZEVhD
	JDTIKorbNJiFNsMmd8PQZZBlxA==
X-Google-Smtp-Source: AA6agR4Rg915HfYG8eb1ezMhisNEmwXDf2H63xpattnoUX9BJJBEZ3Vpb4upxJRarxa+TUu+KYi8eQ==
X-Received: by 2002:a17:902:ec85:b0:175:55ce:f241 with SMTP id x5-20020a170902ec8500b0017555cef241mr6049209plg.89.1662591409962;
        Wed, 07 Sep 2022 15:56:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:2b4c:b0:1f2:da63:2f68 with SMTP id
 y12-20020a17090a2b4c00b001f2da632f68ls227983pjc.3.-pod-prod-gmail; Wed, 07
 Sep 2022 15:56:49 -0700 (PDT)
X-Received: by 2002:a17:90a:fd8c:b0:200:8cf9:63f4 with SMTP id cx12-20020a17090afd8c00b002008cf963f4mr785628pjb.201.1662591409122;
        Wed, 07 Sep 2022 15:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662591409; cv=none;
        d=google.com; s=arc-20160816;
        b=i+ZiwW41SLGlzpIRosZKu0lV14LBDtnqrFDqN6rIp0sS+ki2hHQg0eEqjGFenVgiEQ
         dZTF+AVT27uvef3SfhGueBK6IzWsnB+hSXDoot03jkhJ7xJom3BxUHgsLp/3vI6zgb9L
         iCe/+vHYEEuAhjAlVB/1SmrHYmfG2HgDu4zSU79xSAJW3qxpHAnRXCifv6ZSGosl+xQJ
         1N0yOijOoCrehT4jT9SIczdQ4/4fPKhGjLN8Kf5P/aV7mxiP7Jup125ZntUmaEIUIUOv
         XR+vCQ66gaBjpTO99aV/aEQd9qF6i1/a3E0WmflhKLycryz9L62MRy0G5JIqvJdZvX5C
         Z8Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=wQ5g1zoJWQRyPU7la42Bk0s7FxvSMaCmSIM9itjcQBE=;
        b=oZZggEpm0Pip2TMWdT2nQfzyTssPqRA1ni/PuvGMXCmQdpx4U9csoUW7QcA0q1Ujfj
         ZOWLG53nXB6MHh3aE2evEFZ+8sPTiKEgWVvO3h6t/MncYM7E7yEyC+v0KdYchGDJEhtw
         DDvfv+jw4PZZbwUcGSggka0pERg7KmtAh7z+z1RilN4qpNaTT/zOOFy2HljUVHSXuVdi
         cnd8lxQkTu5quWWBcUXrF6YrLtG98o/VlaFqiL22Gje1SgHvnSLs2/yuM7whWodbplF2
         btVBq189Ot7Fk+ND+o0Xedqkhg/CLM78emfyFiJTXe3HfH8MBEWsZH2wCg6ByNPiYzT7
         YUWQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=m2qLDFLP;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15114.mail.126.com (m15114.mail.126.com. [220.181.15.114])
        by mx.google.com with ESMTP id e10-20020a170902cf4a00b00177e4c70845si2145473plg.580.2022.09.07.15.56.48
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 07 Sep 2022 15:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.114 as permitted sender) client-ip=220.181.15.114;
Received: from 0V5ZS2WE6VIK6H0 (unknown [117.143.49.84])
	by smtp7 (Coremail) with SMTP id DsmowACn9pJ3IRljpfKYBA--.12003S2;
	Thu, 08 Sep 2022 06:55:53 +0800 (CST)
Date: Thu, 8 Sep 2022 06:55:54 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>, 
	"zenghongling@kylinos.cn" <zenghongling@kylinos.cn>
Cc: "Greg KH" <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v2 3/3] uas: ignore UAS for Thinkplus chips
References: <1662519268-18488-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxjRSW5XTwqrTzJF@rowland.harvard.edu>
X-Priority: 3
X-GUID: CFE3A395-8844-46FF-9E1E-E4055B220CC4
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022090806545281343718@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DsmowACn9pJ3IRljpfKYBA--.12003S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAw48Xry8tFyUuw1UGry7GFg_yoW5XFW7p3
	4DKF95Cr4vkFyIvF1xAw47AryFqwsYyFW5GrZIkw4UZa1ruayjqF1Dtr48ury7Jr47Wa1j
	9r4qvF1UKF4DCaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi89N3UUUUU=
X-Originating-IP: [117.143.49.84]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYBp10FpEI5ymjAAAsU
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=m2qLDFLP;       spf=pass
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

Yes,I investigate the thinkplus (PATCH 3)error not caused by XHCI controlle=
r or bad disk.
Hiksemi actually has the same error messgage output with thinkplus, Useless=
 deeper actions trigger UAS crash of thinkplus.
Falling back to USB mass storage=C2=A0can solve the thinkplus problem,We ha=
ve merged to our own main line.

zhongling0719@126.com
=C2=A0
From:=C2=A0Alan Stern
Date:=C2=A02022-09-08=C2=A001:13
To:=C2=A0Hongling Zeng
CC:=C2=A0gregkh; linux-usb; usb-storage; zhongling0719
Subject:=C2=A0Re: [PATCH v2 3/3] uas: ignore UAS for Thinkplus chips
On Wed, Sep 07, 2022 at 10:54:28AM +0800, Hongling Zeng wrote:
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
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>=C2=A0 - Change the email real name and the code worng place.
>
> Change for v2
>=C2=A0 -Change spelling error.
=C2=A0
Resubmitting the patch with a few minor changes won't help it get
accepted.=C2=A0 First you have to answer the questions I asked.
=C2=A0
In particular: The error messages you list above are very different from
the errors in your first two patches.=C2=A0 Those were like:
=C2=A0
[=C2=A0 592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas=
-tag 18
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inflight: CMD
[=C2=A0 592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f=
 88 00 00
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 04 00 00
=C2=A0
You can see how different they are from the messages above.=C2=A0 This mean=
s
that they are caused by a different kind of bug -- and that means this
problem probably requires a different kind of fix from the other two.
=C2=A0
You need to investigate and get a better idea of what's going wrong with
the Thinkplus before you propose a fix.
=C2=A0
Alan Stern
=C2=A0
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
one-eyed-alien.net/d/msgid/usb-storage/2022090806545281343718%40126.com.
