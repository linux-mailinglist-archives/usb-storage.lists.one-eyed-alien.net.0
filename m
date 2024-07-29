Return-Path: <usb-storage+bncBD64ZMV5YYBRBS6BT62QMGQEJKPI6JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8A293FD64
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2024 20:34:53 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5d5ba96af29sf3730049eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2024 11:34:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722278092; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8F9+NRgxIfxGec4A6Rtj/fTyHFzXslzzymTuQxIfuPLsYfTboRpJv1qKg5GsZPTPO
         0dFBcVH6O9MYt+x1S9zfrJQ23r7kKOCc/wdvfolOJmBorkOhw6nY46nxp9uNP/PbAM7E
         2RsCKwvLqn0hrgv7GvJsdzU/sMhpoxOKgoNYWfGn/s274JtfrFtMrsJ5jnnVcsRhiLSF
         3dxUhhJMZYpoz4+NuR4fPDyj8tGkddRkcbH16lyX8zZUDuogWkCfCmbXXalsLuYWgdTg
         jJkVfxMYXTvwZq2EvL9zczF1J5rJzvRsOdo1YlmYllZrGzjozO5wxVLpwyZRLFOagMbj
         QAOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PgKT4WiwTn/qvsnHgRBGuJdXfHgqZWlaHFd2vKlcoMs=;
        fh=8qYJLImhvj5JQzgNpzQ9Vr2wN89tMQEQO//5Q+VWvFI=;
        b=ip5qvWek9GjfGpDG6xEXUjojjH6W9hbmoyKNUuOtE3KxZv/iHxxRkzf4HRzbQLihoH
         +0NOHh45WPJnvbaeQH/6FF95blP8so64yPIMD04GXYBTHOA4BRNC9O3bmy/sdlRUXnBH
         X3Eqv8mSbOk8+Bq2rnFm24MMNEcVXNAfqlf9jsoM+pd+EKlPD6vdx+A2+rSMOM6xZ5lj
         h4weKokv6iLth8WXwicNQnJHHkofMY/IHcDhfYkZdt4nwq0hqgZALwRB6lSy3LBvlkWx
         s/UK/0AWk+YueAxKhvukmPx5Atk03ldSeuPVLZkEJU50owdLBpMXtydMe3zE8FbbN+Sz
         Koyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=VR2QjpI3;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722278092; x=1722882892; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PgKT4WiwTn/qvsnHgRBGuJdXfHgqZWlaHFd2vKlcoMs=;
        b=dPjhVdjikR8ibo6UH3NU3HpBhL1GnJtx2V06BQ3OGDxmcFCDgn7BlJpCA74wbQZLgL
         sRB1kyzpmd8h3woHFoDLcil4c43hDuXLg93B6OCAiVkdVln+GtkvPHYP65qPeXoy6xaT
         foA5OhdoSYw5rV5Unm1WJ+lTAJibL8uF7gass=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722278092; x=1722882892;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PgKT4WiwTn/qvsnHgRBGuJdXfHgqZWlaHFd2vKlcoMs=;
        b=bW8o9mb+Uphei3lnnHA7ap0L5RmGt9SPXVISghLQIbHHNEdl/fAMQcefVC4G7uYgV5
         BV9YPjb397hqv5Cwb/Y/uOlg+mLhC6st3zsOohPdb/HagMmDIO9tibdmbDMcWVnuSsji
         hCSWDgfdYJrlhaQw24Dk+lUWeS7VxrONgzrkxy8+ZY45di75VVPwg9UNyxG3uiYVxsGw
         gGP21KbYVLN6n/ywcPelrFC/17dOnsWLcTYj0rQpxbrAxNmlv/0Sg3ayEGjEY+/QiHM1
         LWH2Wkav258buxF8XucYn+kiYMuQTMnwKO2izRHbVe6+L1pFEHcmO8IhpY8cNKD912WE
         w+UQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWdgbqq7ePm8uNNK6h0oI5Uc7eH9Qp2Yjd5AhOAqRwv7Csg0AYM9/3MC92g9gqB6JUNwGWY3cXjQ331GmXq+hlbtMZ+A7KxUXGY
X-Gm-Message-State: AOJu0YxsXAhpk3MXPJ++kVLHryj1cncS+OHo5e69pt87g0hii1ufgOgh
	pgpTGqASGVbtTfU7OarQzhW+0n6g+5b4OgOnPeVUe+1TZbV3dndr2gN6fxe/t30=
X-Google-Smtp-Source: AGHT+IG3YUWDpKxlM50bu10hSRQb1OxN1Shi2Nxi6PJpwYJKPflUDoNu1lyxhitStzy2BAtdXTEX4g==
X-Received: by 2002:a05:6820:162b:b0:5ba:ec8b:44b5 with SMTP id 006d021491bc7-5d5d0ef49afmr9824823eaf.3.1722278091793;
        Mon, 29 Jul 2024 11:34:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:d299:0:b0:5ba:a73a:6de7 with SMTP id 006d021491bc7-5d5ae8d9574ls5018735eaf.1.-pod-prod-08-us;
 Mon, 29 Jul 2024 11:34:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWhmQFQH7B5W5ziNaGRCxkVC8PDB6JhFbKgKml4e/JvyACdkdJCixmzXl4//sxLtfvZG6JmnMyox8x5ZtQIoT9jVNoU95arVd7StxSxK/k1FQIzJu8=
X-Received: by 2002:a05:6830:4701:b0:703:6ca6:27 with SMTP id 46e09a7af769-70940c1c7c8mr12768903a34.16.1722278091050;
        Mon, 29 Jul 2024 11:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722278091; cv=none;
        d=google.com; s=arc-20160816;
        b=OEk4HCTXBtdbNpztxY06ae7mgGYfq0nm7VbLtMU+NwuY6Q/3OvPcOLUORdtErxqlZc
         e9yCStEbUUQcVaNYNImqwYXZMqI19mBE3Ab/AdRSFDS/pYolTfyWAD3Z52oY2nRvHb70
         0qRxi4ThPYiIfLZs5xRWXEvg79rKRXdkB1Lh5ALKpuIVzs3a3s/PlT9fcExNQaKry2cw
         NaNIAjSj0bIfHbi9Cbt3IW6amSd6iTtcK05xibI3bBK/CDyd81u0LCpJuZBc+uHrz3pW
         0bHhaMPGDzMjt9nxyrKm+GYh1ER0lQmmeuDkeHUwJ49QgSdO3debkwpEwaiocxMzu3Gg
         ON6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=imNjbcelp3B6lXsHYN7XqqAWMw2+xVAXpWIJw514jNs=;
        fh=SmPJnKgqh80snE2VccXgaGTIa1i2IAemIW7uOt8XYLQ=;
        b=qpMSrIHF2qGHwFyOL/4hHpyiqqEwwBM1zLWhQIo4fjic4wyOUj/of1jZDlMxm39qrX
         ztJazuxfkfkAxTOLLew1TKbxrh0tBFbpS2k6suMxqsM1N4Ul4yYpW/6GUHCnXtGB2TYE
         nJpaY8Bj0ojtImlWWlaD5MtBjHL3Nolv/PGB1dBvwUlrL+rGLX3cJgQkXFzvbUY6euUA
         9wSUHpb5ovonolRDpyjbf2zgFMz3wtzF3+ay5ATkhTAU1v/pCyS0tlFflbo+qKVyFarC
         v6FBVO0X22d6PnhXlieq/IViXqnLfumR5ixAWH0mVH71k3c532JinbgRUgHlZjZXaAJb
         x6vA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=VR2QjpI3;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 46e09a7af769-70930706ef4sor3535365a34.7.2024.07.29.11.34.51
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2024 11:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU7c87EFDR8x9pYpwSX9ImUEyy6Up7Fm03i14YvNzriLW/DGcSpMv9ZNZ54DdLkq/yjwlG8xuFlKAkYL84DMz33rIqEPEQL08C/kJpiM5R3VghU0hQ=
X-Received: by 2002:a05:6358:e924:b0:19e:fa9c:5ec9 with SMTP id e5c5f4694b2df-1adc0665bfdmr914934655d.9.1722278090607;
        Mon, 29 Jul 2024 11:34:50 -0700 (PDT)
Received: from rowland.harvard.edu (iolanthe.rowland.org. [192.131.102.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb3f8fb75esm55530016d6.37.2024.07.29.11.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 11:34:50 -0700 (PDT)
Date: Mon, 29 Jul 2024 14:34:47 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Abhishek Tamboli <abhishektamboli9@gmail.com>
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
	dan.carpenter@linaro.org, rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <040f84a0-f299-4165-b261-636f8c9c2060@rowland.harvard.edu>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240729182348.451436-1-abhishektamboli9@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=VR2QjpI3;
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

On Mon, Jul 29, 2024 at 11:53:48PM +0530, Abhishek Tamboli wrote:
> Change bl_len from u16 to u32 to accommodate the necessary bit shifts.
> 
> Fix the following smatch warnings:
> 
> drivers/usb/storage/ene_ub6250.c:1509 ms_scsi_read_capacity() warn: right shifting more than type allows 16 vs 24
> drivers/usb/storage/ene_ub6250.c:1510 ms_scsi_read_capacity() warn: right shifting more than type allows 16 vs 16
> 
> Signed-off-by: Abhishek Tamboli <abhishektamboli9@gmail.com>
> ---
>  drivers/usb/storage/ene_ub6250.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
> index 97c66c0d91f4..ab6718dc874f 100644
> --- a/drivers/usb/storage/ene_ub6250.c
> +++ b/drivers/usb/storage/ene_ub6250.c
> @@ -1484,7 +1484,7 @@ static int ms_scsi_mode_sense(struct us_data *us, struct scsi_cmnd *srb)
>  static int ms_scsi_read_capacity(struct us_data *us, struct scsi_cmnd *srb)
>  {
>  	u32   bl_num;
> -	u16    bl_len;
> +	u32    bl_len;
>  	unsigned int offset = 0;
>  	unsigned char    buf[8];
>  	struct scatterlist *sg = NULL;

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/040f84a0-f299-4165-b261-636f8c9c2060%40rowland.harvard.edu.
