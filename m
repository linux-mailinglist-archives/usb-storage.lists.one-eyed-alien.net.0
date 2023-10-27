Return-Path: <usb-storage+bncBCJ455VFUALBBSF65SUQMGQETNMS5ZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id D38847D8D1A
	for <lists+usb-storage@lfdr.de>; Fri, 27 Oct 2023 04:24:09 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id 46e09a7af769-6ce37195375sf2056420a34.0
        for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 19:24:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698373448; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZaLcTJwh7ZUPYoMxGDHdrnDrSdNEAZNaMvKFUI5zInxPbqEg9yS1CkSWLg2VybEFi
         jV72e/l3d2hvwGdkMZsEBx8elzVuyCJXRtEmJUZ/2abv9/buhNIbM0FjX7qYpju3qGm9
         l44jj3XA+eCLQkTIe6a38y8efy2PYfb83EkgY0muWKWdYkbHvGfBtnoACMQnx6Sgd4PZ
         e79nj6l7414AyKvi9D0wFHNb1E94zaj2knp7lflKpkGOVztCM0bgs8IubkqscooIRzc+
         6PnQjdD5kY3tnILx6WTzWhqwe5qtJn2c4ds3y0L59X9/L9SRDvcrOcD0Cqv+IqzvNUDr
         lfyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kc9Tef8XLn/+e3bub+HojkjC8fFktN5Cz3gTLh2JDsw=;
        fh=slsskFrV3WY49Bu2izFMxxUAVgMUVrzw01oWonqm8s8=;
        b=KSwFj9eOQRkF+QcWu5WdNjF+Y4mVV31oB25CIkLgEGpUSLTiW8Y1L4VIH9h7SCIkE/
         V0V7gOn5pld7cAs2vrs6Paw3GO0iaBl7JbWIMfSbtcjXIagztSN9VRzW2ZxbvJeoPG1U
         UCiUNzYwCBM8VWqHkjjYF3v6xHfqmH5j5m9nb7QnZ+BfTgsMlf52s6R2sMPHJ6qRs4ek
         Cukw9UveVjaufIEFqAkL4xYb6otm0UWLVIo1kB573ieMDgA5VeS16cBjNSyAqQdZC944
         7E7O/D2oywRT2xvVJHqjeSHJkLNrf3K48HlMqVTxx4P1vehr2k2S5J5doZwu85Xh/ed7
         QZvA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="Qc//bwhS";
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698373448; x=1698978248; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kc9Tef8XLn/+e3bub+HojkjC8fFktN5Cz3gTLh2JDsw=;
        b=QrwIsrcm7mnhsi1RTORyvXCtPfywZt0+CT7JD/satl0KKhHrvdbFhVsp/wN/GEp0YI
         WUvTisQVCTBhCpXXxrDc1W8Prd+wuc4wWSP2OttmseKDFqmxfYm9SZL8Yt0GSGDtB8QP
         tNYIPk1gEWCZlGsfW7mflvm6CZULTF1tQZX+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698373448; x=1698978248;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kc9Tef8XLn/+e3bub+HojkjC8fFktN5Cz3gTLh2JDsw=;
        b=A0veWtlmBUc6knLB3JU/TxTqKjDa0keQOdzntQ2bRXmwuue3tlxw0f4VTXWL0btSfj
         E/ISxUIRTQBYii5TY+ne7vTMc4pohoIlFiIT4gnWV/TI9cP39UTEZl6ZyrrhLNEOaHHc
         bpNqsna2bjVlikQ0rk73Yd+gX1d1o4Cxl6g77Wey4JUxIpQ9dyM2XFNjkjoDTpilrl7l
         daOL7hSfJas90G/MFHG/8SNTQxDMmyOiZLnlg/JJj0vOI95wt4J08KOI2QcYPQ/YtFXl
         UhNHeKm3lafS1YPAQcntq8MH1S5lBMwFr14xw3MdS33SDx7U6YieUVU1QcqinL72bJFB
         9BLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Ywk04TPgc7xj3w3dCNea+9s6TEN0gXbRNVJGGRWEi3UivpMz24U
	bjjU6CCqvY2FV26SErH9apC15A==
X-Google-Smtp-Source: AGHT+IHRJ5E3CyB9U5m+7BqlIspshTqWV+ZnoQKJbluZlEWWAJdG7JuKVpu9SEGZRASiueUpwJlIVw==
X-Received: by 2002:a05:6870:3e03:b0:1da:ed10:bcb with SMTP id lk3-20020a0568703e0300b001daed100bcbmr1741195oab.31.1698373448499;
        Thu, 26 Oct 2023 19:24:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:2084:b0:1dd:6b48:3e25 with SMTP id
 ry4-20020a056871208400b001dd6b483e25ls1314871oab.1.-pod-prod-01-us; Thu, 26
 Oct 2023 19:24:08 -0700 (PDT)
X-Received: by 2002:a05:6870:c595:b0:1e9:e963:61a2 with SMTP id ba21-20020a056870c59500b001e9e96361a2mr688452oab.3.1698373448041;
        Thu, 26 Oct 2023 19:24:08 -0700 (PDT)
Received: by 2002:a05:6808:1901:b0:3a8:4c6f:5bc7 with SMTP id 5614622812f47-3b51f4b78fcmsb6e;
        Thu, 26 Oct 2023 18:27:26 -0700 (PDT)
X-Received: by 2002:a17:903:245:b0:1c3:6d97:e89e with SMTP id j5-20020a170903024500b001c36d97e89emr1398937plh.58.1698370045156;
        Thu, 26 Oct 2023 18:27:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698370045; cv=none;
        d=google.com; s=arc-20160816;
        b=KUQ3dNy8YUlCahqYTF3Cz8vH/j6ACMvl4djVzs/rqvvyoXGbvu92peM+KRdWR6Wsje
         X52tqcwfkDp+sIdkPkT/X/gvbK2OwZsAaBHAZvlg8DRgRAuDOL6+6DX3NrD9d4ypY+R1
         w/Uj3ztVEri+iML4kOk6PJri6IxIJp6PsHYMGQBTHIKOj8+G30xVC3k8QELwxGQiGsTT
         FtSw4hojb7myKw+VqlFNTMG4DAtB07a9Kxf7CkQxeya44Kv+e4j3bCwPn7uwaL6Mbz3w
         5B/kTZT2iLjehsX2WKw7xjwAAhBgGwFZ9l7C7j2YgVp1mldwPEtqReL2hZ3W+FLs3yT9
         At1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uLkE7ycZyZUEFEt2cxJuUP4GH1I9LOzbThOGZvdmrZk=;
        fh=slsskFrV3WY49Bu2izFMxxUAVgMUVrzw01oWonqm8s8=;
        b=FjA45hXILLmfB7+cLJd7bXs3da3rZBlNhqYpib3cIlz/91XVxElRIVz55KdFDrpdaE
         +uKzYUXoWyu2rqWD2utzkvXgvsHUxyG//PeBec8Smn0rfp2C4RNyqeaFmWrBbpfSGK6W
         /UfqLCtiqjTTafN8f938JDlD/W155x3xuPRY1UYmrjHBPdnm2qOQ8vZuykUWdKasU50H
         8JTQrkiVgPHl1TowUKmOKgQRgzMjay1vw/qdpbOnUw0ZsRKTkUtFqgJGfgCB1Z9qeYMJ
         U13e1WQK4O+IEP43UhYAZP8CtYOC4HaM0Vqw9xIqrqQKoCQHJmFHLSivM7PLQWog5/C6
         qDSQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="Qc//bwhS";
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z17-20020a170902ee1100b001c72501d3d2sor374408plb.1.2023.10.26.18.27.25
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Oct 2023 18:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90b:3449:b0:27d:3f08:cc21 with SMTP id lj9-20020a17090b344900b0027d3f08cc21mr1247600pjb.5.1698370044674;
        Thu, 26 Oct 2023 18:27:24 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id 27-20020a17090a035b00b00268b439a0cbsm220664pjf.23.2023.10.26.18.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 18:27:24 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 6C845819CFF3; Fri, 27 Oct 2023 08:27:21 +0700 (WIB)
Date: Fri, 27 Oct 2023 08:27:21 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: LihaSika <lihasika@gmail.com>, Linux USB <linux-usb@vger.kernel.org>,
	Linux USB Storage <usb-storage@lists.one-eyed-alien.net>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>
Subject: [usb-storage] Re: Linux kernel 6.1 - drivers/usb/storage/unusual_cypress.h
 "Super Top" minimum bcdDevice too high
Message-ID: <ZTsR-RhhjxSpqrsz@debian.me>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1Hwj7JMejiX0Jn0x"
Content-Disposition: inline
In-Reply-To: <9aaf9d6a-71d3-45ff-a02b-ce94b32e24eb@gmail.com>
X-Original-Sender: bagasdotme@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="Qc//bwhS";       spf=pass
 (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=bagasdotme@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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


--1Hwj7JMejiX0Jn0x
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Oct 26, 2023 at 10:39:14PM +0300, LihaSika wrote:
> On 26.10.2023 22.14, Greg KH wrote:
> > Please submit a proper patch to the linux-usb@vger.kernel.org mailing
> > list and we will be glad to take it from there.
> > 
> > thanks,
> > 
> > greg k-h
> 
> OK, here it is!
> 
> Best regards,
> L.
> --
> 
> $ cat lihasika-unusual_cypress.patch
> diff --git a/drivers/usb/storage/unusual_cypress.h
> b/drivers/usb/storage/unusual_cypress.h
> index 0547daf..7b3d5f0 100644
> --- a/drivers/usb/storage/unusual_cypress.h
> +++ b/drivers/usb/storage/unusual_cypress.h
> @@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
>  		"Cypress ISD-300LP",
>  		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> 
> -UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
> +UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
>  		"Super Top",
>  		"USB 2.0  SATA BRIDGE",
>  		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
> 

Hi LihaSika,

Please follow proper patch submission process in order to get above patch
accepted. See Documentation/process/submitting-patches.rst in the kernel
sources for how to do that properly. You may also consider adding
`Cc: stable@vger.kernel.org` trailer in your patch to mark it to be
backported to stable kernels (including one you use).

Thanks.

-- 
An old man doll... just what I always wanted! - Clara

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZTsR-RhhjxSpqrsz%40debian.me.

--1Hwj7JMejiX0Jn0x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZTsR9QAKCRD2uYlJVVFO
owsBAP9NQP2AnEVtcjkqd3qLFr7bH55SgKTqkBsbDswwok5T2gD+KJShd7AwHdoR
gXB/Dddja84qJD7+XWNlHwLugk6vHwc=
=rnS+
-----END PGP SIGNATURE-----

--1Hwj7JMejiX0Jn0x--
