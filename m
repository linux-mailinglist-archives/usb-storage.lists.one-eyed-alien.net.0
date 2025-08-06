Return-Path: <usb-storage+bncBD64ZMV5YYBRBT6YZXCAMGQEQBQPEWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id A4567B1C7F6
	for <lists+usb-storage@lfdr.de>; Wed,  6 Aug 2025 16:53:29 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-70738c24c4fsf243836d6.1
        for <lists+usb-storage@lfdr.de>; Wed, 06 Aug 2025 07:53:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754491984; cv=pass;
        d=google.com; s=arc-20240605;
        b=FKWYbBZ4g5hT4ME5hHKOVg64feH1EurKJXKonlA5EjEvvVRe1aj707LYWgZ/uHG+z3
         OMlzZSkVbRP2KoZgPJevCT8ivliiOsPQrdSS/5B4TRNYmBBzXDcRi1FeyPcyupP8uRwZ
         ScD5ap36AT6U7mvvjylsvHTnGHg3nG17kOXl5jdX74AYzmEFX0LxWxGLjTMjKc5BIXTW
         r3tFqIEeMimm1jBJtj+8NMnNgIiK0v8j0lkJhwkwH/pjHOuvu1mRk62Oxd1Q5Y/K4pv8
         uz8FruuVroeDubtIha4/5Ign8u149IAkoTktfqBLY65MQkI5RkPCpXYOREwcJUPR3ITN
         eQ+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LtnGtDdpTn+XUnOHHqRfDXBY5hNYRP7/znNeUkgA2mI=;
        fh=AVl9MgH1C1Bmdq+wh1wQ9JeybyxjKzTWjC9ycLlxHLQ=;
        b=eqinSmW2t2sGN32UYtbaALBasf1ZTGYBSfCIAIZ/74DOoLJ0ZwO3E2azGH1TkDrFUM
         qnQ/g4n8suLFfmhGqLjK4WtQfRKKqGxezfRunHDCE87FS0Mt+2f4R/aCa657Relit/d4
         PX/g9z2BSDwaeIYh5SnqGtX1SxOyIzXy7pFs4PHdayKyTx9+kk+fCcfIbv/cX2HdoCXs
         ABGHIUraI0uHhclBqZbrq6LJ97VjylfYYpwXNY7F7Eo+l7W0cFFr+b84Y7Jchmv6hyJr
         dpWALcCtcf4TEJ6lOpuoyYDXf8ffc25JzLozjLJWdPJT+RboI+yHpIb1x+2E328JxA71
         ibyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="hEI9Jo5/";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1754491984; x=1755096784; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LtnGtDdpTn+XUnOHHqRfDXBY5hNYRP7/znNeUkgA2mI=;
        b=ZLLod7HDplZNhnIHiM6Xc0LrAHFkplMQxrHoXOJ0xXopZJCKGUNMjAGGKsVw8cumfh
         SUPkUdyFUvVivdQCy/wcf8elkB1upMjZHt1LhibRVszpBynV0ILD41/3foJRhgsep5p0
         CA+uF4dy7b1OJMGa9/0nrOPyrdbgT1k8mhhBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754491984; x=1755096784;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LtnGtDdpTn+XUnOHHqRfDXBY5hNYRP7/znNeUkgA2mI=;
        b=iVEuxr2SQIkliwj6N4d0v49f3lXnGRMarnXtQ2Y0BlfX43+9X3lioA+59gkZFkhHKx
         jm2vmwm5/I4MpMLz1RXLgkhg6A5P7gW3/gHWKnzoqiOTYMc8Grro7LGuNLS1ddlykkMP
         s1uMkzaTpunyLhxs8M3UbfVZf5IC4/7rr3UFXNyBaRvd8UqG6dhHyIp3h0FuG7ejL010
         e9a8Qs0emgpOeDe6nTmMQuaczp4w3Tp2xRtsJ2rYBfzPCPnG30kUw2F51S6zmmrMfa2p
         u8ulc3nUMIedV5V0dOUeTi+XAwMQitVgE2aH6IKo7IEGCslj0rYMn2H5zDp8xZ7p3ulY
         ELLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV+UhQBaIwhnN7qR8hGyXjBHseEo3B3a/kq/3k7ROys+S3X6HuX5U8bR+hWvrVN5OsNq0yokg==@lfdr.de
X-Gm-Message-State: AOJu0YyxTD7QIwNy6QtCtBvpg4czP0p2BE6Qi77Dk0eEfps8Ux13i8Vq
	akf6jlPyjAgV8BoE9D9gme+WPehP907DFVfl2AJoOyFyTISU2Y1AsqdNNERl+Bj3qDk=
X-Google-Smtp-Source: AGHT+IHXg6bdw5d6r/swVysYEDcfHRR4N4FLmKckSPpm0x6abOEhfWnKfR/RMlmVu7CaYdkgQtog6g==
X-Received: by 2002:a05:622a:410b:b0:4ab:41a2:b980 with SMTP id d75a77b69052e-4b09268e7d6mr43995401cf.33.1754491983515;
        Wed, 06 Aug 2025 07:53:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZd/AdXH83onPtng5Oq0fFxxa2tTCJnv8A0Qv1ZjqffAYA==
Received: by 2002:ac8:5702:0:b0:4a8:17dc:d1ee with SMTP id d75a77b69052e-4b06d51411cls54249391cf.0.-pod-prod-08-us;
 Wed, 06 Aug 2025 07:53:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbc7+CH+ZclfmQdBmkfi0CzWHeyzjpCBCPHOUBX9Uht7fXFPgozK85/EcF95e9OPWNRzkunfTF80+Ryw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:a48f:b0:4b0:9dd8:724e with SMTP id d75a77b69052e-4b09dd87305mr6048391cf.20.1754491982341;
        Wed, 06 Aug 2025 07:53:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754491982; cv=none;
        d=google.com; s=arc-20240605;
        b=JpzElXIEX5pTU2TAimG2LAkKU72QDA/H0eNjFoWcWpRoVBuMGNB4E2wNplbF8Dve4M
         W5P1aZ2LnYeg7vIO01lzAtmaiVLwLLH74FosJmmwoX1nkQZ5NVTZZODihmtcL6jZxoKJ
         2CXWab0iUWBuV35u+M9sQk/QsuOurS87S1+cdVHie2wUw2+gnlRgINOLVLgK/jqJ35Jr
         ZCO8xGu+zUR2xvBsj20DXIS0bneAvspoVHI8bce2r/QQqIyH1kfWnJTpQpTNtXbQyQAI
         Jj9Z/mpuHbkmgM4D8Z0WxSF5KhcwyjBnM9rQy2/t+NRiuEsXCyfS6beo5TRepO1JHPFn
         Fogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=y49um8k48nE0B08AM4u/UHZ2Qks552cSP9p7KiLp1/4=;
        fh=zEQ6cIFj5Qzl/e77OeuT91VQkwLMDlzmn0ERU3JbxSA=;
        b=jKhN5XsuOqHY5WO+20fE+I4kssxCiNy9c6dyLj35WORB418XPNxcuZNqLMe4BHLXY8
         f/QU6vt8fzfkg0bOlJJQjJzlFAs56tx63A0ufwbRtDvUflWB8ThzCqy9w2O6qLfPhGjn
         gZ0vB4KUN/cSMlDjE3Ow3HLjYwXEGVyERPWJoVWGM2MLgiAIKHfml83aWm7EY4UFO2A5
         wZbKXuGjwMVBJMiqI1HnNyv+XpblJT7C7P70nvGH5Md3Qj8+iBC2vn4rmnRy5Om+A7LC
         0oe+IZJCis+R4bFCuVVkuYMwFL6PTRpOakhr9Dnjs3I7sp3tWV5APDy18cDLOyoWiLyS
         e6PA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="hEI9Jo5/";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4b09221f773sor13120921cf.1.2025.08.06.07.53.02
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 06 Aug 2025 07:53:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVsisH2Rcpvv3VjHSFqbP+w/TgH1Ktu5YzdLBsYgDrdMZ4f5wW4MXcJHeVx6s1gbWlbiWvt27Cq08BuLA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsJ9AGbe/qXAvJ6n8zyQosErrzdcdy5f+O6WFbtXVu711lrhZPtDK8WT61amTo
	QXgLOz8oxdTroGOLP8ZQJ+wDmLKxNWUEzuUEYkrvbSwA0FEnQ95RUfuNauDFh46FeTuGi/bLv4Q
	4XjiEk3ALWYUHxxBJaeH4m2UM8C+p4ve6RquQI2YZ81liv4OO0ZlW2KtEAxYHdcpZTPAsNAT2Zw
	5txrb6Bjo4MqpU29xPzO95qO0SgslBJ0uW6LDDwozcT3jDYk3VU6JUH/piTq5MW868htlHQtvhr
	f+3TikrEJKsIshYiPgnxVnO+mRdILUm1wsTKzS1/C9UzNlbgtg7HEMPfemy08Yrecp5crO7V4ZW
	9LVr2pQ9dPx/Vr+JkuR37EXlFjzG1logL+3nd/I8c
X-Received: by 2002:a05:622a:1191:b0:4ab:38c1:f9bd with SMTP id d75a77b69052e-4b0924dd3c2mr42118451cf.12.1754491981724;
        Wed, 06 Aug 2025 07:53:01 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0780a0316sm31471251cf.43.2025.08.06.07.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 07:53:00 -0700 (PDT)
Date: Wed, 6 Aug 2025 10:52:58 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Mael GUERIN <mael.guerin@murena.io>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 1/1] usb-storage: Add unusual-devs entry for
 Novatek NTK96550-based camera
Message-ID: <63e45e57-c3c1-40e3-8ad5-af3834584a60@rowland.harvard.edu>
References: <20250806134722.32140-2-mael.guerin@murena.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250806134722.32140-2-mael.guerin@murena.io>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b="hEI9Jo5/";
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

On Wed, Aug 06, 2025 at 03:47:21PM +0200, Mael GUERIN wrote:
> Signed-off-by: Mael GUERIN <mael.guerin@murena.io>
> ---

Patches must have a nonempty description.  You can simply take the text=20
of your 0/1 message and put it directly in the 1/1 email as the=20
description.  Then there won't be any need for a separate 0/1 message.

>  drivers/usb/storage/unusual_devs.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unu=
sual_devs.h
> index 54f0b1c83..7bb5a1d75 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -262,6 +262,13 @@ UNUSUAL_DEV(  0x0421, 0x06c2, 0x0000, 0x0406,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_MAX_SECTORS_64 ),
> =20
> +/* Added by Ma=C3=ABl GUERIN <mael.guerin@murena.io> */
> +UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
> +		"Novatek",
> +		"NTK96550-based camera",
> +		USB_SC_SCSI, USB_PR_BULK, NULL,
> +		US_FL_BULK_IGNORE_TAG ),

See the instructions at the start of this file.  Entries are supposed to=20
be sorted by Vendor ID and then Product ID.

Alan Stern

> +
>  #ifdef NO_SDDR09
>  UNUSUAL_DEV(  0x0436, 0x0005, 0x0100, 0x0100,
>  		"Microtech",
> --=20
> 2.50.1
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/63e45e57-c3c1-40e3-8ad5-af3834584a60%40rowland.=
harvard.edu.
