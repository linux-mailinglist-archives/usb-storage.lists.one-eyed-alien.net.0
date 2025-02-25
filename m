Return-Path: <usb-storage+bncBD64ZMV5YYBRBC53666QMGQE3XFTCTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 602A4A443FE
	for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 16:11:09 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6e65e1c57cbsf94476026d6.3
        for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 07:11:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740496268; cv=pass;
        d=google.com; s=arc-20240605;
        b=IS+5xbuTFNUmVuVgToNdqwrSGNRhYJMC0dn+tne4MBkSPb7Z7f/eiN145pGp7Y2nvl
         l8CWj69RVMk7ctML0LJnz3uTstM60EW5iRjXo3tmygsVs9CNcerh+3EW43sCyVZw0c/s
         7AfowOhfyWbHxX4fghYPn50OEi2SEMaNV7z+T8rjMTfwDKIemA4JuHVdJmFy+j0cgZhi
         dLFuzkcI6oghtkYF8jxWOj8dvbGAOJ4sHkE58vzGzAAaSI12su/olyz5mVGM7DoXaMz2
         hlgXgtErb23C+7o3a3T08OBeUiOD8NQf874bsKs2nPAKTsBLYRJkTsXmPRKZGsNFs8pq
         CinQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Um72nUI4YilOGMfPmE2PoJZhlRQAJi96A+mcYCeSkng=;
        fh=PJbVOV5aMqxkOuz6J81p0FbwWtIibAymfvr+i05dQzo=;
        b=g3SHXVv5C9CBD4UJnwBpU9Kf0ynMz4CwRw/QsOSpK80/Kog7eYTI8iV0hBavHv58/F
         Mkq3b8EIzahEbMg2ywFaHwSVa86MecKjIiSlQx56quzXnHcj0LbsY95G7z+tiFTJEVGB
         KKC1F+NeTWkbRoUcfYk9xHddSVNFuD98fBWhGq6c1bwQD7RiusRw2pLwQ8FOrB4M5frr
         UjjwYZkzWiBGPn9ZClx/PQ/b1U9Tu6Z5/j+df/gTsDoKOXEXw3mEjq46o3m1euev785m
         CmG1bo6yBwBURYbzstA9E17Se3LtZvQk6T/wJISrqQg5gSC86oHqHlc3ZOB80sk4O06R
         Blew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=n4g5alSK;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740496268; x=1741101068; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Um72nUI4YilOGMfPmE2PoJZhlRQAJi96A+mcYCeSkng=;
        b=cYhIUEXp0BLFiwNitgutchfLdYbord+AfO6JtyHj0PssMtF7wcTko8gJkpF5ikBCpN
         1rOLjGZZQEl3zf6Hxb7g0Mlk4IdF9pvPP+jpMZyo8FT+fIQdZ5hCXZdbJ+RIMG6ifZfn
         AV3pC0Nxjp98ivAaOlNcE+fEm/3/BEFjgd11M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740496268; x=1741101068;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Um72nUI4YilOGMfPmE2PoJZhlRQAJi96A+mcYCeSkng=;
        b=OpgPxUd7Z7rvn/RSvCnXvR8Y/94l+IabA0pMH2DcCLo5XjDgP+g3dPfWEVC7jrZsJN
         MxSzn/YL4PI/aKgn+Jjb0GuQ9eRgGRTRqCAx5j2BQFn17BNVMRpjDB6xpODKtf6qbAEi
         qfQl2FNbhaebEtlPnNzo7u7y0DwplDBt2ah7JFD7MC6LY645sQncGysTEmddEGKs2dLc
         qx2nKkRiDPoCoM4S682NKb3PQDvGCz0mAMC3qD5Un+yD4kSHfbG05hkWyn9JYvzJq/5H
         AbwXC9/Cbsy6yteR0SzmgFnz3+Rt+J5cPbyrHYimnl6fmk1xDdQi5YghlwYcy4Urop1x
         bUgQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWlwK4XOZDwvMKm97AiFTwrBhahMSBRMml1WAfJ9qsNVUlGi5ius67svFsP5kP9jn6i/Q3r9A==@lfdr.de
X-Gm-Message-State: AOJu0YzzG9oAhx2NCe2gLMxPn7JuVKMd6Hy6iB+y3IPhn08v/pbCXihV
	xUZV9wJfd8PNV+0mTBqxQb4W7WaCW0eWRQl7EX0mijK3aWiNc9r5yXl7aOGuqBE=
X-Google-Smtp-Source: AGHT+IFZ37bk+VZGUCaMf7X/2ZgpNVLObIeRcx4ca1LP02pIkyURTa11WU3ykt7ygAhE4iLDF1gEdw==
X-Received: by 2002:a05:6214:2b09:b0:6e6:61a5:aa57 with SMTP id 6a1803df08f44-6e6ae7f7ec3mr235407116d6.14.1740496267935;
        Tue, 25 Feb 2025 07:11:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFleI/dm7BxUND52JYWDQ9x3cAxppzdls/ek/Q7bxyY2w==
Received: by 2002:a05:6214:494a:b0:6d8:87d5:f97d with SMTP id
 6a1803df08f44-6e6a22abe1els4996626d6.2.-pod-prod-07-us; Tue, 25 Feb 2025
 07:11:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV7YxS9NRQxz7mk1+3zj8HSgr0v0qgjWCtZfE2YEnmpYPYpBx4KJjfUkxPJ9D7LQRERUg05vZZHNpGxEw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:d8a:b0:6e6:5bc0:1521 with SMTP id 6a1803df08f44-6e6ae7f870fmr247701886d6.17.1740496266507;
        Tue, 25 Feb 2025 07:11:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740496266; cv=none;
        d=google.com; s=arc-20240605;
        b=csWrwX0eIdD9YZOGQwrq46YbVOnNHe9RegCsUWRsUlELCbQbAzUdalwGITd5UQ8osE
         8X5DkgF0aVZM2Y39NrmVXmHZTMacrdYNmMkgCXwzOVPml9pw/eLe7B7yBd5OXCnuh6mE
         LVJ88XX1Ka9kRaL1mpkGapqpwGppH5rFfWe75hzevGf/y3MmuPyxYKlFKX3oeKDIk4L8
         hXsJc5OD/YNh7rceFAG0a+vVEhr0TxGQHjLVn6uhJ+vLKsk6eVkUnEwMb5JNFgVsWRXj
         WWdl4kwwpKsBX2WBAiqFI1+o/pX+fd6CUWVLldp6ed8BYU/Rh+mcQmGh3sze7aiIRQuX
         9CtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UuZd7P5DT0VbRPayAqAZRRBZvg2Yklr2Rd6Ruf/f2fY=;
        fh=iZDCw6MLu7bFXeiZiaiA6xNM4I/be2MR9uJStz2wmq8=;
        b=KebNvXpLyBihJ44kHKnrt5FGBP65a5LWYpIB49Jorb9b8Xvma/8vgogX9K5hidn5+4
         HghGgCGprHvEFRGe2zsd8OpVRDZEyaBjKcPWl12ADwWr2Z46r2deIO45Ec4isnPrexn7
         rnpbAPkifaCzzJ3BxxAVfSsfbmKzr1b3mWHoSMKav8hzj9oQwKbQthWKU/2oM3FgOX+r
         bFSVzCCkitQ0qWw4+PuokMImDt/SWJQs4OoMO0N60iHQjpEu7fUIoD5ZAuok0SL2VQTM
         EavYPYX8kZPcSyUR8J0SomWMBpsfquAbJCOJRbPe1/0Tu/+1wReZFt7GIAxvfft2gknX
         PQ/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=n4g5alSK;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-6e87b019831sor12887286d6.1.2025.02.25.07.11.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 25 Feb 2025 07:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV0ReD9Ozbd+T1H3RK0wqxprYImHIAwyCGQEM7nuHAIhfEmMBO8csDjDlCsp2bZmHQhp2HAe0DGWbVvzA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsWpRcriDPGQ6PSmhhe1r004ED7KcJK80134SR8DdxMdCzpnFIIJqjFKH8VmqT
	V9eaITec2+EgcZPKAPUH6GVIbFfu3FxFOdpuvaOfEdGBt7B75J1i+9ZSVby9jrqkYeybze/rHXK
	6i8ySEagUFi5wJFi8C5T07T2PGyW8/iLxdFTtDX2q0XE+1sy6r5hoqAbfWTd/9naUcT0NmXs8gL
	o4+lg93Fu6Tbzg68ANwunKODewK0qq+YIzu2eseBCNzK5Dqga+YyLoH7n9KbrXbuOPamOW5oKZQ
	die4ySCnb22tXsGjwQRYXeuAsIs=
X-Received: by 2002:a05:6214:765:b0:6e6:683c:1e32 with SMTP id 6a1803df08f44-6e6ae7c9ee2mr254909256d6.8.1740496266092;
        Tue, 25 Feb 2025 07:11:06 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::2dc7])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e87b0a04ccsm10187616d6.68.2025.02.25.07.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 07:11:05 -0800 (PST)
Date: Tue, 25 Feb 2025 10:11:02 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: j.ne@posteo.net
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: jumpshot: Use const for
 constant arrays
Message-ID: <a4e81827-b506-491f-8087-204044705c42@rowland.harvard.edu>
References: <20250225-misc-const-v1-1-121ff3b86437@posteo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250225-misc-const-v1-1-121ff3b86437@posteo.net>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=n4g5alSK;
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

On Tue, Feb 25, 2025 at 01:25:03PM +0100, J. Neusch=C3=A4fer via B4 Relay w=
rote:
> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>=20
> These arrays are not modified. Make them const.

This does not explain _why_ you want to declare these arrays const.

> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>
> ---
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

There should not be two Signed-off-by lines for the same person.  You=20
should keep only the one with the email address you used for sending the=20
patch.  And it should have your full name, just like signing a legal=20
document.

> ---
>=20
> This change was compile-tested with ARCH=3Dpowerpc
> ---
>  drivers/usb/storage/jumpshot.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpsho=
t.c
> index 39ca84d6859122903de4e64b13e697e8b7d4ab31..089c6f8ac85fbb683cca8b03a=
2ff06c0ca776167 100644
> --- a/drivers/usb/storage/jumpshot.c
> +++ b/drivers/usb/storage/jumpshot.c
> @@ -367,16 +367,16 @@ static int jumpshot_handle_mode_sense(struct us_dat=
a *us,
>  				      struct scsi_cmnd * srb,=20
>  				      int sense_6)
>  {
> -	static unsigned char rw_err_page[12] =3D {
> +	static const unsigned char rw_err_page[12] =3D {
>  		0x1, 0xA, 0x21, 1, 0, 0, 0, 0, 1, 0, 0, 0
>  	};
> -	static unsigned char cache_page[12] =3D {
> +	static const unsigned char cache_page[12] =3D {
>  		0x8, 0xA, 0x1, 0, 0, 0, 0, 0, 0, 0, 0, 0
>  	};
> -	static unsigned char rbac_page[12] =3D {
> +	static const unsigned char rbac_page[12] =3D {
>  		0x1B, 0xA, 0, 0x81, 0, 0, 0, 0, 0, 0, 0, 0
>  	};
> -	static unsigned char timer_page[8] =3D {
> +	static const unsigned char timer_page[8] =3D {
>  		0x1C, 0x6, 0, 0, 0, 0
>  	};
>  	unsigned char pc, page_code;
> @@ -477,7 +477,7 @@ static int jumpshot_transport(struct scsi_cmnd *srb, =
struct us_data *us)
>  	int rc;
>  	unsigned long block, blocks;
>  	unsigned char *ptr =3D us->iobuf;
> -	static unsigned char inquiry_response[8] =3D {
> +	static const unsigned char inquiry_response[8] =3D {
>  		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
>  	};

There's nothing wrong with this.  However, several other source files in=20
this directory also have static arrays that are never written to.  Why=20
don't you change all of them?

If you do, it will be best to put the changes for each of the files in=20
its own patch, and then submit them as a series of patches.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/a4e81827-b506-491f-8087-204044705c42%40rowland.=
harvard.edu.
