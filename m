Return-Path: <usb-storage+bncBD64ZMV5YYBRBFVZZ3CAMGQENOHVMGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 7060AB1CBCD
	for <lists+usb-storage@lfdr.de>; Wed,  6 Aug 2025 20:19:04 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4b065932d0bsf4193111cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 06 Aug 2025 11:19:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754504343; cv=pass;
        d=google.com; s=arc-20240605;
        b=cWdiIcwf0CqhWKHbzdmburhAL2COQkJSKYp6T28lw7sQzrSwXWdOdz1mQWtg6SFa1Q
         WMU8UaMuWtGDjF6qxsPb+JQ48nNphgFvRfn51MVIW2kjAJQ5vYnoAYUGZHVvDeLTRigw
         1OpOdoly+xSGoaHC6oxX9UG0mqZ9uVXxmyXuCYQOe2/MdkUFtBy3S2SAiQe/4q5r8r4W
         nK6UX9+9l5EDymUd9QBsiVWiczCxUn4ZF1YPeYlNBNYE7yh99Itdix3RzSSLPVkLH2/J
         nvCBdxZ1gcoIiqCn8udxiCkkMwXtdR7woW2bMyFXQT/LKSJ26dZ+pCYFhC8HmSoiKjMU
         0AwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LZORFMzwBZICN+9w52es6NJ0H6rAYKRalH9257z5cQg=;
        fh=ACz8Gwqn7dg2vCy3JwnrCFh3d7wf9p/ndgyiLtBwDAU=;
        b=Pje8/Xo5Qb+bEH0cbJGZx1NYQPsxcc0UxV9X+pVOGVNxh8SbAjaL0XXSxmDdkkXJhD
         w5IGlt8yvtbQxRv3dgjGPDyY0gMy8PBvz+vHUM1NWPufCoFus7wEgQCdHfN3GHGeZOyi
         cLuHl0XwLt/DHHU5r44X3Q/31Eyz5Cn+jrqYreTLXsiGkCmC9gpi6y79M7TQUi90Fltg
         9rksCNjucVkodzahMR4TZqZqJ+nxRnFVR+cOIh5TuBa+0WzEdQma1Ccvbf2AUOJKnG+W
         tr/s1YJiYY1RbL18lnhedyS1Rrhv8Ul+auVArb5D12JEpCNYRoDuEujJkOIpfeUcI1jg
         sFRw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=jh7n6hKO;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1754504343; x=1755109143; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LZORFMzwBZICN+9w52es6NJ0H6rAYKRalH9257z5cQg=;
        b=WC5+im6ygzI/k8E5+tsieSQXWCHXN2PxdHwanKm1nM4SZB0W2LZPK4Jp3WUXl38GTl
         3CmF9qe8NuRCkdRcLRRXi9x//eaGdimylvJHuh5OH93X1Cud8PTuh/+8Ve7KMS7rkJkF
         gwY6WCEMrqeWq2ALWXRlCkDudeMqpwmuOT+0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754504343; x=1755109143;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LZORFMzwBZICN+9w52es6NJ0H6rAYKRalH9257z5cQg=;
        b=d516Lbw57YokqVvojyPw55+yyZikXEHV+BQsVzMxTt3v2D0ENJQDAvbK8XJiaei2uU
         mlH1PAhMCfgFhs2oCnZ4iaJIrXAzg1htr+uIeL1Awt8SPNA1N+Y22v6wfMkWYRF3huBB
         ByHa2HFAg+SXd16zaUYX70Y1EPlYbotVVkvUyIo6/GWRZZHPbmlpMnphuguUL0+oDuL+
         i7RgvV6DnwnH51HdzHJKuyl26J5miY9qbFs/bjw+Kxo2eyQjPhIQC8B2H4YVoT63VcE8
         GKjSaGLeA7HsnfyPda64NeGQmGjLL6yklqu+Dvcx/liCiLUnY8Fegt71VL8pHGdvMmI/
         PxVg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqOCeAOmOKYHg9MimeoswhQdvHbFUbszINPCM20Mp6NFgT6XrIXQHIYbRZWtCCG3PQnGympA==@lfdr.de
X-Gm-Message-State: AOJu0Yz84NOWWbgoXxO09Pm9Mkkzw4AFMq/rPsj0YhF4Cayu0IOjS8pX
	Ca1NgFvuO1ib/xTsic3VAtKEOJ2mqs5ArP1pMQy76Shb3QkoGnOjfzgr1hHJf27NInk=
X-Google-Smtp-Source: AGHT+IGlegPYrmLeqyxROWhCh9T4My3klk7NfS9m8WVz6D4wsx3u4LVt2P05hQYQVcTcwOsYAkD4sg==
X-Received: by 2002:a05:622a:199b:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4b0913d3a34mr55800771cf.17.1754504342451;
        Wed, 06 Aug 2025 11:19:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcW+jPJoqGH7yHVHKEymiwhBvEmKKlmqAgXgfMur7IT2g==
Received: by 2002:a05:622a:1a12:b0:4b0:8b27:4e49 with SMTP id
 d75a77b69052e-4b0a044ed9fls2572381cf.0.-pod-prod-02-us; Wed, 06 Aug 2025
 11:19:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9ZirZA4YRlEW5l6xDkr9i5x3zfML+sxh3U6MDXFRFgPpInSXR0MpsCpOpjebHIDnwn9RrvgSv+dxDjA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:2b49:b0:4b0:82d9:7cb5 with SMTP id d75a77b69052e-4b09145abbdmr57926381cf.26.1754504341082;
        Wed, 06 Aug 2025 11:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754504341; cv=none;
        d=google.com; s=arc-20240605;
        b=ijCwIYRaxcnzrxwlfdEkqSc15HactLhoUK5bK55IDWY+OWlKGMcTzWwMtYo3yiP3k4
         BjERiEy8Xu8ik57rDBs+YPXpef4pBuyeXQmJ+4lLDVlzbvmuQbnCoNC3fpsKa9PRup5j
         5JR95kO0FSVxEut0pU6Xw5+bz5O4jvQXVq9i9Cb1o4wBtkzPweAnH7u82OfS/bpboq3N
         GIkwjywGAVbbXicBzu7sBf12bs4Lk6mfVCg1fxl9wqmIRH58qP6VQ2PFdZadhVXAl4yj
         xQ93boZKBy+WZJfNJkZM/C1Y/LtN+Za9buIMwrmxbeFPiPC0Nb4ydamxHbwIVnXAXyZh
         KuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Athr79gwm1aP+FwxIvbTHKxraTrSIJP2WIrwbPHH0Zk=;
        fh=XFYTCtCzzyj+PKxQUn84dUGT/vRPwnHwy0cSCaXp44U=;
        b=IPPnZJBBBuZBp/gMknOMmAkjLZatUr3BWRw7TnQUGO/mpT7msiwFCAjILJXhlz6B2g
         97kyMAlocGEkjRHGwxyXVlX9f3W7eBCTz4Nxe07giWg+vtTAuCFx9UYqS3Vz5KFTuKrg
         1IgaKkUYDAD/w4IfF9knB1inJObRMQ2mB5Esq4quCPsLzIKConFKqQ8jTgruU4ny9sw/
         6EVCF+/OfD1OR/N5gbbN+cWzt/Q5Y9meYUggSLHqDHNPeaT+19P9Eek/GuvJqffQYPiH
         mp3uGzmSRCN6BBPDePDjKA7bsjJyZq82bwBXwT+EAk7/BQwH9P9mUNBaUjx3/0MzMPV4
         xPyQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=jh7n6hKO;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4aeeed07331sor151864671cf.3.2025.08.06.11.19.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 06 Aug 2025 11:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVGLzWnqV8cJwfClo3emxvvISAQwfsexwaKSY0Rabd1/d7VV7VKBWgTmMPqFLObKjM2rTZ9pfs2yZq82w==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvuaU4iKUuAvgzcANMbd6v/SM0suS0c2qqonemj5izjSnGFr55pu2g0q/ICpuj
	w+YVeTY0qEWz67JLMjKK9/c3SQqqyvg5fVWDHx6v4OE9FeM2EL4/b5WiDrSO3UgK/VZ2ftl4CRg
	PA1jpA2jKbaL+q07dk2O8b5HYnLXaQ1QRXAgJdkEC8vy1oOLyRG2U0l1cxjQL853PP9dMnyDjXn
	23MKc76Bx4TF244POTY+B9+dW5sY8S0cPAPoA0DU8WuRLmLYtXt++qGf/xR48RcNFG6W1jGSrfT
	0t+jsbyZkZU2N0oOL0zwJGkhgN4syMQ10mMKTa4voEiFeSdLIXzdc/IGS+uVP+koq1krVxh2+CS
	6fGuoZzGK8aitvIjB/uWL2hw7H/PI+bBwAL3jDGK6/wpBaqPRJc1LxJzCKbwLjb0LfA==
X-Received: by 2002:a05:622a:2b49:b0:4b0:82d9:7cb5 with SMTP id d75a77b69052e-4b09145abbdmr57925671cf.26.1754504340318;
        Wed, 06 Aug 2025 11:19:00 -0700 (PDT)
Received: from rowland.harvard.edu ([2607:fb60:1011:2006:349c:f507:d5eb:5d9e])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e80b2f7a07sm287772785a.6.2025.08.06.11.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 11:18:59 -0700 (PDT)
Date: Wed, 6 Aug 2025 14:18:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Mael GUERIN <mael.guerin@murena.io>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH v2 1/1] usb-storage: Add unusual-devs entry
 for Novatek NTK96550-based camera
Message-ID: <28080ef2-a767-4444-b487-9a12fe0ba41c@rowland.harvard.edu>
References: <20250806134722.32140-2-mael.guerin@murena.io>
 <20250806164406.43450-1-mael.guerin@murena.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250806164406.43450-1-mael.guerin@murena.io>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=jh7n6hKO;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

The Subject line really ought to say "USB: storage: Add ..." but that's=20
a very minor matter; Greg can adjust it if he wants when the patch is=20
applied.

Apart from that...

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

On Wed, Aug 06, 2025 at 06:44:03PM +0200, 'Mael GUERIN' via USB Mass Storag=
e on Linux wrote:
> Add the US_FL_BULK_IGNORE_TAG quirk for Novatek NTK96550-based camera
> to fix USB resets after sending SCSI vendor commands due to CBW and
> CSW tags difference, leading to undesired slowness while communicating
> with the device.
>=20
> Please find below the copy of /sys/kernel/debug/usb/devices with my
> device plugged in (listed as TechSys USB mass storage here, the
> underlying chipset being the Novatek NTK96550-based camera):
>=20
> T:  Bus=3D03 Lev=3D01 Prnt=3D01 Port=3D00 Cnt=3D01 Dev#=3D  3 Spd=3D480  =
MxCh=3D 0
> D:  Ver=3D 2.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1
> P:  Vendor=3D0603 ProdID=3D8611 Rev=3D 0.01
> S:  Manufacturer=3DTechSys
> S:  Product=3DUSB Mass Storage
> S:  SerialNumber=3D966110000000100
> C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3Dc0 MxPwr=3D100mA
> I:* If#=3D 0 Alt=3D 0 #EPs=3D 2 Cls=3D08(stor.) Sub=3D06 Prot=3D50 Driver=
=3Dusb-storage
> E:  Ad=3D81(I) Atr=3D02(Bulk) MxPS=3D 512 Ivl=3D0ms
> E:  Ad=3D02(O) Atr=3D02(Bulk) MxPS=3D 512 Ivl=3D0ms
>=20
> Signed-off-by: Mael GUERIN <mael.guerin@murena.io>
> ---
> Thanks for your review and your advice. Here's the updated version of the
> patch with a correct description as well as the unusual_devs.h file sorte=
d
> correctly.
>=20
>  drivers/usb/storage/unusual_devs.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unu=
sual_devs.h
> index 54f0b1c83..bee9f1e80 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -934,6 +934,13 @@ UNUSUAL_DEV(  0x05e3, 0x0723, 0x9451, 0x9451,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_SANE_SENSE ),
> =20
> +/* Added by Ma=C3=ABl GUERIN <mael.guerin@murena.io> */
> +UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
> +		"Novatek",
> +		"NTK96550-based camera",
> +		USB_SC_SCSI, USB_PR_BULK, NULL,
> +		US_FL_BULK_IGNORE_TAG ),
> +
>  /*
>   * Reported by Hanno Boeck <hanno@gmx.de>
>   * Taken from the Lycoris Kernel
> --=20
> 2.50.1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/28080ef2-a767-4444-b487-9a12fe0ba41c%40rowland.=
harvard.edu.
