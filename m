Return-Path: <usb-storage+bncBDY3NC743AGBB7N7UT7AKGQEH2NW73Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B952CDC56
	for <lists+usb-storage@lfdr.de>; Thu,  3 Dec 2020 18:27:27 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id q184sf1261765oih.7
        for <lists+usb-storage@lfdr.de>; Thu, 03 Dec 2020 09:27:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607016446; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDjc7ZoaiVYP2SuxqtB3teNZ75Cv1BfZLx2e/G2oAveMnlSV1Bi9tWLT4U6eviFms7
         r46MRLtLZ/BRQgMFqvPI00aYqFCcN0iHK4pSkqpeFqfhLZ4Uo2hNuvTmjvvCuGxq02q2
         9vbJ/12mQw53Ogs+yaq1BbwZxrdemuIkML7NgHd5cfme7qb++2vOxBfvbxWoMmBFdEYF
         2uygcSQDD7s44ZBo7phJNzqCmz6GS2zwHz0F8aFZgTBfZRqqQIywbjOb2xY+hPkbwsFs
         NZtjiHapmmM0RONPBYXtqhAOQ+t+2jIlrAwwnrtv6iMJl+lj7yvg//DIw5h3Qeol1iEl
         LgmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=Ylo6KK3MBT5T7wFGIBhFMuMFoD4WnxeyFuumJ2SXShw=;
        b=IGHhDWwfnSiSVPKOLIWKVyj7YMX++OL3tM0Shecn4VlpAt/HYG2731VoE/dx+8J0EG
         2TMNAWPtIujGQSmEdar2+B71BAe4wDTNJikPWzePIJaZwd5VgALpgkBVOxvdvGw5LWov
         BDoG/sSSOWsCamvUfZRC2O/Cd0H55tdJmj/oniAqQo84Zf8VGZ0fOe21Ur+CkbLYkmbJ
         bpADpaDj/Ch3J3tF94ZDQVfPgLerFGwMA+SqOm/bTTzNHkyvjuEImvwLAwyETirImesY
         2s4e9VndJwrFuyWKuqw9etJ/xe1Kp/WSn2IWTG9+ynOqtY4K+GdtV4HSDThjFIVf5xPL
         /Wug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ylo6KK3MBT5T7wFGIBhFMuMFoD4WnxeyFuumJ2SXShw=;
        b=jQRNoIsJalh3LkYKBHk4KsAq9KPQgsvWHkerM0ERcGcP+R4NyoCo6hg89ZopVk4NtX
         lQ0jIfQAVuUAYa+xP4GHQ1KLt+2ALg7Pj6W8WPQ4VU0vtkGkHH5Fh0pSPXBddOErqzMB
         dhleLYLlJSo9slck40rf76LjqDCd5MgEAm5vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ylo6KK3MBT5T7wFGIBhFMuMFoD4WnxeyFuumJ2SXShw=;
        b=H4uOhAMoempLC8jWGzrGwLm48Rs6rvwRfUyHV8W/asp1I1W1CT2WDoZEUmxK7omDrq
         Ge1leLDwu+CPaco881MyXKFA/IXHZtu2LGwMB0c0lwJU57kroeZZYeFGuUcm14wYu0Kq
         9jtk0mwr2folmcNbYuToIk5eCOihYnTiV5AT/S/i4HEn16DEl32oxhGr0xa9etmzI6Bt
         opNj+aKXA/nTmYoCgURHy+2UOUw9dHVwLGUg2+YUD3JYodtCI0vm+g0Z6o6UwmZQHN9M
         Pd0YtOs2dpmYxXDUIpmNHgQskuk3yKAjrrom8lDrHc3uiBzaztEiDoNpK4VBKErrD3yw
         6GHQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5331g5q3xFol5vGjMXirWAtIj2SsdX+7Z1HGTodn76U6tZSYun2C
	lY/9PWYDLZs3Svv0fCIA/THlIQ==
X-Google-Smtp-Source: ABdhPJzSmECqF7bRXe9jCNPIIOGH6vNe/iDyzVkmMlpu1PZqsQ2cj1wos/9+z24EObpnqoAKQFqLPg==
X-Received: by 2002:a05:6830:1589:: with SMTP id i9mr154484otr.273.1607016446170;
        Thu, 03 Dec 2020 09:27:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:648d:: with SMTP id g13ls1576157otl.0.gmail; Thu, 03 Dec
 2020 09:27:25 -0800 (PST)
X-Received: by 2002:a9d:7087:: with SMTP id l7mr205102otj.116.1607016445638;
        Thu, 03 Dec 2020 09:27:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607016445; cv=none;
        d=google.com; s=arc-20160816;
        b=p8nipoYLGAXdxoj0hyBpbMqSGNq2qv+TMaHL/LSme1emZ/G/C5ObpvyzNblPVHPP1I
         e21SmG9BUon9IxYjbLpCql4hepjSBwANJvZRgvmXV6lFJcqv3frgyGuSIqaSn5oiOak6
         vSOoz6xQrbf8nKb3aOOAmk4eeOl6LZvLEeS5spNyjEoJCCrosS8Nvp0F1HTckq96oLp1
         SNuXpkyNi6yzIiGHSlCoBoMmimmKqgGM8ixeR5JFx/nYl4fQiS63XGZoWwgCvKhqFohi
         LxqcQzU6cX47s3pwmoUsTCS7x9gnsCWdqkFIYZw/9uE+q5IhGBdn5hE2SA5/pey1S9F2
         DrEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4a3CnmCApKDWf9pzt7zSxNuusMDdFx/09BrKNFZltvI=;
        b=hB62wkUHyIk7e/wEFWwWEYd0q+rm9MNq3bi3f6p7+6tet0sxwzL9MPY/6juW1lgtAA
         lR/CVobiHVvAyqUokcg4YRw0PPHgfVux4wF9LGA6oIHGZ6AwsYN4SOcQuAwK9mpA4toj
         A1ClzgxKM0XyYrZpJhac75g7vgKwV38CAbX4oog731YjDDNRpF0ZmsTZ4PJtGOCAP5+7
         emEjDdpU7O5Mgt2jOplHdgl1P57RY3V1oBkUM6enw8XBlj3j2ulWXAvGqeQ08pirHh/I
         +YawKSkaqkYz+dCIqGNhH4GuyzQrUF03N/6UB5AFTIc5vriw4MybwypRsGY84RQEHjc4
         N92Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com. [216.40.44.94])
        by mx.google.com with ESMTPS id o124si1071492oig.209.2020.12.03.09.27.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 09:27:25 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.94 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.94;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 0929B1E0B;
	Thu,  3 Dec 2020 17:27:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:1:41:69:355:379:599:800:960:966:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:2196:2199:2393:2559:2562:2639:2828:2898:3138:3139:3140:3141:3142:3503:3504:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4384:4385:4395:4605:5007:6119:8957:9036:10004:10226:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12683:12740:12895:12986:13138:13231:13439:13894:14659:14664:21080:21451:21524:21627:21990:30003:30009:30012:30029:30046:30054:30070:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: mask07_530d8ca273bd
X-Filterd-Recvd-Size: 14382
Received: from XPS-9350.home (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Thu,  3 Dec 2020 17:27:23 +0000 (UTC)
Message-ID: <269cf2848a70a09f5185a3e5e7b801e41159d597.camel@perches.com>
Subject: [usb-storage] Re: [PATCH] drivers: usb: storage: prefer pr_*() macros
 over bare printk()
From: Joe Perches <joe@perches.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>, 
	linux-kernel@vger.kernel.org
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Date: Thu, 03 Dec 2020 09:27:22 -0800
In-Reply-To: <20201203141115.27460-1-info@metux.net>
References: <20201203141115.27460-1-info@metux.net>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.94 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-12-03 at 15:11 +0100, Enrico Weigelt, metux IT consult
wrote:
> pr_*() printing helpers are preferred over using bare printk().

Please run your proposed patches through checkpatch --strict
and see if any of its bleats are things that should be fixed
at the same time.  For this patch:

$ ./scripts/checkpatch.pl --terse --emacs --strict --showfile -
drivers/usb/storage/alauda.c:625: WARNING: Prefer using '"%s...", __func__'=
 to using 'alauda_read_map', this function's name, in a string
drivers/usb/storage/alauda.c:626: WARNING: quoted string split across lines
drivers/usb/storage/alauda.c:645: WARNING: Prefer using '"%s...", __func__'=
 to using 'alauda_read_map', this function's name, in a string
drivers/usb/storage/alauda.c:651: WARNING: Prefer using '"%s...", __func__'=
 to using 'alauda_read_map', this function's name, in a string
drivers/usb/storage/alauda.c:652: WARNING: quoted string split across lines
drivers/usb/storage/alauda.c:820: WARNING: Prefer using '"%s...", __func__'=
 to using 'alauda_write_lba', this function's name, in a string
drivers/usb/storage/alauda.c:826: WARNING: Prefer using '"%s...", __func__'=
 to using 'alauda_write_lba', this function's name, in a string
drivers/usb/storage/ene_ub6250.c:2105: CHECK: Avoid CamelCase: <Insert>
drivers/usb/storage/ene_ub6250.c:2106: CHECK: Avoid CamelCase: <Ready>
drivers/usb/storage/ene_ub6250.c:2107: CHECK: Avoid CamelCase: <IsMSPro>
drivers/usb/storage/ene_ub6250.c:2108: CHECK: Avoid CamelCase: <IsMSPHG>
drivers/usb/storage/ene_ub6250.c:2109: CHECK: Avoid CamelCase: <WtP>
drivers/usb/storage/sddr09.c:871: WARNING: Prefer using '"%s...", __func__'=
 to using 'sddr09_write_lba', this function's name, in a string
drivers/usb/storage/sddr09.c:1238: WARNING: Prefer using '"%s...", __func__=
' to using 'sddr09_read_map', this function's name, in a string
drivers/usb/storage/sddr09.c:1279: CHECK: Alignment should match open paren=
thesis
drivers/usb/storage/sddr09.c:1293: WARNING: quoted string split across line=
s
drivers/usb/storage/sddr09.c:1294: WARNING: quoted string split across line=
s
drivers/usb/storage/sddr09.c:1303: WARNING: quoted string split across line=
s
drivers/usb/storage/sddr09.c:1312: WARNING: quoted string split across line=
s
drivers/usb/storage/sddr55.c:491: CHECK: Alignment should match open parent=
hesis

> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
> =C2=A0drivers/usb/storage/alauda.c     | 23 ++++++++------------
> =C2=A0drivers/usb/storage/ene_ub6250.c | 20 ++++++++---------
> =C2=A0drivers/usb/storage/freecom.c    |  2 +-
> =C2=A0drivers/usb/storage/sddr09.c     | 46 +++++++++++++++++------------=
-----------
> =C2=A0drivers/usb/storage/sddr55.c     |  7 +++---
> =C2=A05 files changed, 43 insertions(+), 55 deletions(-)
>=20
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 20b857e97e60..4453238da87e 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -622,9 +622,8 @@ static int alauda_read_map(struct us_data *us, unsign=
ed int zone)
> =C2=A0
>=20
> =C2=A0		/* check even parity */
> =C2=A0		if (parity[data[6] ^ data[7]]) {
> -			printk(KERN_WARNING
> -			       "alauda_read_map: Bad parity in LBA for block %d"
> -			       " (%02X %02X)\n", i, data[6], data[7]);
> +			pr_warn("alauda_read_map: Bad parity in LBA for block %d"
> +				" (%02X %02X)\n", i, data[6], data[7]);
> =C2=A0			pba_to_lba[i] =3D UNUSABLE;
> =C2=A0			continue;
> =C2=A0		}
> @@ -643,17 +642,15 @@ static int alauda_read_map(struct us_data *us, unsi=
gned int zone)
> =C2=A0		 */
> =C2=A0
>=20
> =C2=A0		if (lba_offset >=3D uzonesize) {
> -			printk(KERN_WARNING
> -			       "alauda_read_map: Bad low LBA %d for block %d\n",
> -			       lba_real, blocknum);
> +			pr_warn("alauda_read_map: Bad low LBA %d for block %d\n",
> +				lba_real, blocknum);
> =C2=A0			continue;
> =C2=A0		}
> =C2=A0
>=20
> =C2=A0		if (lba_to_pba[lba_offset] !=3D UNDEF) {
> -			printk(KERN_WARNING
> -			       "alauda_read_map: "
> -			       "LBA %d seen for PBA %d and %d\n",
> -			       lba_real, lba_to_pba[lba_offset], blocknum);
> +			pr_warn("alauda_read_map: "
> +				"LBA %d seen for PBA %d and %d\n",
> +				lba_real, lba_to_pba[lba_offset], blocknum);
> =C2=A0			continue;
> =C2=A0		}
> =C2=A0
>=20
> @@ -820,15 +817,13 @@ static int alauda_write_lba(struct us_data *us, u16=
 lba,
> =C2=A0		 * Maybe it is impossible to write to PBA 1.
> =C2=A0		 * Fake success, but don't do anything.
> =C2=A0		 */
> -		printk(KERN_WARNING
> -		       "alauda_write_lba: avoid writing to pba 1\n");
> +		pr_warn("alauda_write_lba: avoid writing to pba 1\n");
> =C2=A0		return USB_STOR_TRANSPORT_GOOD;
> =C2=A0	}
> =C2=A0
>=20
> =C2=A0	new_pba =3D alauda_find_unused_pba(&MEDIA_INFO(us), zone);
> =C2=A0	if (!new_pba) {
> -		printk(KERN_WARNING
> -		       "alauda_write_lba: Out of unused blocks\n");
> +		pr_arn("alauda_write_lba: Out of unused blocks\n");
> =C2=A0		return USB_STOR_TRANSPORT_ERROR;
> =C2=A0	}
> =C2=A0
>=20
> diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_u=
b6250.c
> index 98c1aa594e6c..3d3d42c44570 100644
> --- a/drivers/usb/storage/ene_ub6250.c
> +++ b/drivers/usb/storage/ene_ub6250.c
> @@ -1957,7 +1957,7 @@ static int ms_card_init(struct us_data *us)
> =C2=A0	u32 btBlk1stErred;
> =C2=A0	struct ene_ub6250_info *info =3D (struct ene_ub6250_info *) us->ex=
tra;
> =C2=A0
>=20
> -	printk(KERN_INFO "MS_CardInit start\n");
> +	pr_info("MS_CardInit start\n");
> =C2=A0
>=20
> =C2=A0	ms_lib_free_allocatedarea(us); /* Clean buffer and set struct us_d=
ata flag to 0 */
> =C2=A0
>=20
> @@ -2064,7 +2064,7 @@ static int ms_card_init(struct us_data *us)
> =C2=A0	kfree(PageBuffer1);
> =C2=A0	kfree(PageBuffer0);
> =C2=A0
>=20
> -	printk(KERN_INFO "MS_CardInit end\n");
> +	pr_info("MS_CardInit end\n");
> =C2=A0	return result;
> =C2=A0}
> =C2=A0
>=20
> @@ -2076,13 +2076,13 @@ static int ene_ms_init(struct us_data *us)
> =C2=A0	struct ene_ub6250_info *info =3D (struct ene_ub6250_info *) us->ex=
tra;
> =C2=A0	u8 *bbuf =3D info->bbuf;
> =C2=A0
>=20
> -	printk(KERN_INFO "transport --- ENE_MSInit\n");
> +	pr_info("transport --- ENE_MSInit\n");
> =C2=A0
>=20
> =C2=A0	/* the same part to test ENE */
> =C2=A0
>=20
> =C2=A0	result =3D ene_load_bincode(us, MS_INIT_PATTERN);
> =C2=A0	if (result !=3D USB_STOR_XFER_GOOD) {
> -		printk(KERN_ERR "Load MS Init Code Fail !!\n");
> +		pr_err("Load MS Init Code Fail !!\n");
> =C2=A0		return USB_STOR_TRANSPORT_ERROR;
> =C2=A0	}
> =C2=A0
>=20
> @@ -2095,18 +2095,18 @@ static int ene_ms_init(struct us_data *us)
> =C2=A0
>=20
> =C2=A0	result =3D ene_send_scsi_cmd(us, FDIR_READ, bbuf, 0);
> =C2=A0	if (result !=3D USB_STOR_XFER_GOOD) {
> -		printk(KERN_ERR "Execution MS Init Code Fail !!\n");
> +		pr_err("Execution MS Init Code Fail !!\n");
> =C2=A0		return USB_STOR_TRANSPORT_ERROR;
> =C2=A0	}
> =C2=A0	/* the same part to test ENE */
> =C2=A0	info->MS_Status =3D *(struct MS_STATUS *) bbuf;
> =C2=A0
>=20
> =C2=A0	if (info->MS_Status.Insert && info->MS_Status.Ready) {
> -		printk(KERN_INFO "Insert     =3D %x\n", info->MS_Status.Insert);
> -		printk(KERN_INFO "Ready      =3D %x\n", info->MS_Status.Ready);
> -		printk(KERN_INFO "IsMSPro    =3D %x\n", info->MS_Status.IsMSPro);
> -		printk(KERN_INFO "IsMSPHG    =3D %x\n", info->MS_Status.IsMSPHG);
> -		printk(KERN_INFO "WtP=3D %x\n", info->MS_Status.WtP);
> +		pr_info("Insert     =3D %x\n", info->MS_Status.Insert);
> +		pr_info("Ready      =3D %x\n", info->MS_Status.Ready);
> +		pr_info("IsMSPro    =3D %x\n", info->MS_Status.IsMSPro);
> +		pr_info("IsMSPHG    =3D %x\n", info->MS_Status.IsMSPHG);
> +		pr_info("WtP=3D %x\n", info->MS_Status.WtP);
> =C2=A0		if (info->MS_Status.IsMSPro) {
> =C2=A0			MSP_BlockSize      =3D (bbuf[6] << 8) | bbuf[7];
> =C2=A0			MSP_UserAreaBlocks =3D (bbuf[10] << 8) | bbuf[11];
> diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.=
c
> index 3d5f7d0ff0f1..43183a815a66 100644
> --- a/drivers/usb/storage/freecom.c
> +++ b/drivers/usb/storage/freecom.c
> @@ -480,7 +480,7 @@ static int init_freecom(struct us_data *us)
> =C2=A0
>=20
> =C2=A0static int usb_stor_freecom_reset(struct us_data *us)
> =C2=A0{
> -	printk (KERN_CRIT "freecom reset called\n");
> +	pr_crit("freecom reset called\n");
> =C2=A0
>=20
> =C2=A0	/* We don't really have this feature. */
> =C2=A0	return FAILED;
> diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
> index 51bcd4a43690..da1114ee865f 100644
> --- a/drivers/usb/storage/sddr09.c
> +++ b/drivers/usb/storage/sddr09.c
> @@ -868,8 +868,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba=
,
> =C2=A0	if (pba =3D=3D UNDEF) {
> =C2=A0		pba =3D sddr09_find_unused_pba(info, lba);
> =C2=A0		if (!pba) {
> -			printk(KERN_WARNING
> -			       "sddr09_write_lba: Out of unused blocks\n");
> +			pr_warn("sddr09_write_lba: Out of unused blocks\n");
> =C2=A0			return -ENOSPC;
> =C2=A0		}
> =C2=A0		info->pba_to_lba[pba] =3D lba;
> @@ -881,7 +880,7 @@ sddr09_write_lba(struct us_data *us, unsigned int lba=
,
> =C2=A0		 * Maybe it is impossible to write to PBA 1.
> =C2=A0		 * Fake success, but don't do anything.
> =C2=A0		 */
> -		printk(KERN_WARNING "sddr09: avoid writing to pba 1\n");
> +		pr_warn("sddr09: avoid writing to pba 1\n");
> =C2=A0		return 0;
> =C2=A0	}
> =C2=A0
>=20
> @@ -1146,7 +1145,7 @@ sddr09_get_cardinfo(struct us_data *us, unsigned ch=
ar flags) {
> =C2=A0
>=20
> =C2=A0	if (result) {
> =C2=A0		usb_stor_dbg(us, "Result of read_deviceID is %d\n", result);
> -		printk(KERN_WARNING "sddr09: could not read card info\n");
> +		pr_warn("sddr09: could not read card info\n");
> =C2=A0		return NULL;
> =C2=A0	}
> =C2=A0
>=20
> @@ -1188,7 +1187,7 @@ sddr09_get_cardinfo(struct us_data *us, unsigned ch=
ar flags) {
> =C2=A0		sprintf(blurbtxt + strlen(blurbtxt),
> =C2=A0			", WP");
> =C2=A0
>=20
> -	printk(KERN_WARNING "%s\n", blurbtxt);
> +	pr_warn("%s\n", blurbtxt);
> =C2=A0
>=20
> =C2=A0	return cardinfo;
> =C2=A0}
> @@ -1236,7 +1235,7 @@ sddr09_read_map(struct us_data *us) {
> =C2=A0	info->pba_to_lba =3D kmalloc_array(numblocks, sizeof(int), GFP_NOI=
O);
> =C2=A0
>=20
> =C2=A0	if (info->lba_to_pba =3D=3D NULL || info->pba_to_lba =3D=3D NULL) =
{
> -		printk(KERN_WARNING "sddr09_read_map: out of memory\n");
> +		pr_warn("sddr09_read_map: out of memory\n");
> =C2=A0		result =3D -1;
> =C2=A0		goto done;
> =C2=A0	}
> @@ -1276,7 +1275,7 @@ sddr09_read_map(struct us_data *us) {
> =C2=A0			if (ptr[j] !=3D 0)
> =C2=A0				goto nonz;
> =C2=A0		info->pba_to_lba[i] =3D UNUSABLE;
> -		printk(KERN_WARNING "sddr09: PBA %d has no logical mapping\n",
> +		pr_warn("sddr09: PBA %d has no logical mapping\n",
> =C2=A0		       i);
> =C2=A0		continue;
> =C2=A0
>=20
> @@ -1290,30 +1289,27 @@ sddr09_read_map(struct us_data *us) {
> =C2=A0	nonff:
> =C2=A0		/* normal PBAs start with six FFs */
> =C2=A0		if (j < 6) {
> -			printk(KERN_WARNING
> -			       "sddr09: PBA %d has no logical mapping: "
> -			       "reserved area =3D %02X%02X%02X%02X "
> -			       "data status %02X block status %02X\n",
> -			       i, ptr[0], ptr[1], ptr[2], ptr[3],
> -			       ptr[4], ptr[5]);
> +			pr_warn("sddr09: PBA %d has no logical mapping: "
> +				"reserved area =3D %02X%02X%02X%02X "
> +				"data status %02X block status %02X\n",
> +				i, ptr[0], ptr[1], ptr[2], ptr[3],
> +				ptr[4], ptr[5]);
> =C2=A0			info->pba_to_lba[i] =3D UNUSABLE;
> =C2=A0			continue;
> =C2=A0		}
> =C2=A0
>=20
> =C2=A0		if ((ptr[6] >> 4) !=3D 0x01) {
> -			printk(KERN_WARNING
> -			       "sddr09: PBA %d has invalid address field "
> -			       "%02X%02X/%02X%02X\n",
> -			       i, ptr[6], ptr[7], ptr[11], ptr[12]);
> +			pr_warn("sddr09: PBA %d has invalid address field "
> +				"%02X%02X/%02X%02X\n",
> +				i, ptr[6], ptr[7], ptr[11], ptr[12]);
> =C2=A0			info->pba_to_lba[i] =3D UNUSABLE;
> =C2=A0			continue;
> =C2=A0		}
> =C2=A0
>=20
> =C2=A0		/* check even parity */
> =C2=A0		if (parity[ptr[6] ^ ptr[7]]) {
> -			printk(KERN_WARNING
> -			       "sddr09: Bad parity in LBA for block %d"
> -			       " (%02X %02X)\n", i, ptr[6], ptr[7]);
> +			pr_warn("sddr09: Bad parity in LBA for block %d"
> +				" (%02X %02X)\n", i, ptr[6], ptr[7]);
> =C2=A0			info->pba_to_lba[i] =3D UNUSABLE;
> =C2=A0			continue;
> =C2=A0		}
> @@ -1331,18 +1327,16 @@ sddr09_read_map(struct us_data *us) {
> =C2=A0		 */
> =C2=A0
>=20
> =C2=A0		if (lba >=3D 1000) {
> -			printk(KERN_WARNING
> -			       "sddr09: Bad low LBA %d for block %d\n",
> -			       lba, i);
> +			pr_warn("sddr09: Bad low LBA %d for block %d\n",
> +				lba, i);
> =C2=A0			goto possibly_erase;
> =C2=A0		}
> =C2=A0
>=20
> =C2=A0		lba +=3D 1000*(i/0x400);
> =C2=A0
>=20
> =C2=A0		if (info->lba_to_pba[lba] !=3D UNDEF) {
> -			printk(KERN_WARNING
> -			       "sddr09: LBA %d seen for PBA %d and %d\n",
> -			       lba, info->lba_to_pba[lba], i);
> +			pr_warn("sddr09: LBA %d seen for PBA %d and %d\n",
> +				lba, info->lba_to_pba[lba], i);
> =C2=A0			goto possibly_erase;
> =C2=A0		}
> =C2=A0
>=20
> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
> index 15dc25801cdc..9b5102a1cd9b 100644
> --- a/drivers/usb/storage/sddr55.c
> +++ b/drivers/usb/storage/sddr55.c
> @@ -487,7 +487,7 @@ static int sddr55_write_data(struct us_data *us,
> =C2=A0
>=20
> =C2=A0		/* check that new_pba wasn't already being used */
> =C2=A0		if (info->pba_to_lba[new_pba] !=3D UNUSED_BLOCK) {
> -			printk(KERN_ERR "sddr55 error: new PBA %04X already in use for LBA %0=
4X\n",
> +			pr_err("sddr55 error: new PBA %04X already in use for LBA %04X\n",
> =C2=A0				new_pba, info->pba_to_lba[new_pba]);
> =C2=A0			info->fatal_error =3D 1;
> =C2=A0			set_sense_info (3, 0x31, 0);
> @@ -741,9 +741,8 @@ static int sddr55_read_map(struct us_data *us) {
> =C2=A0	=09
> =C2=A0		if (info->lba_to_pba[lba + zone * 1000] !=3D NOT_ALLOCATED &&
> =C2=A0		    !info->force_read_only) {
> -			printk(KERN_WARNING
> -			       "sddr55: map inconsistency at LBA %04X\n",
> -			       lba + zone * 1000);
> +			pr_warn("sddr55: map inconsistency at LBA %04X\n",
> +				lba + zone * 1000);
> =C2=A0			info->force_read_only =3D 1;
> =C2=A0		}
> =C2=A0
>=20


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/269cf2848a70a09f5185a3e5e7b801e41159=
d597.camel%40perches.com.
