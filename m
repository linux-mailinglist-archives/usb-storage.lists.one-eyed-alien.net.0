Return-Path: <usb-storage+bncBDA6VNV634ARBY4C4LAAMGQEPKWJYKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CB6AA8F1D
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 11:14:13 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-6017ee6038asf4450839eaf.1
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 02:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746436451; cv=pass;
        d=google.com; s=arc-20240605;
        b=ANVgZ95LibIwKbC/CQZ/6R1QGCBz9a+nIpwDGkoSm/Do3xPes0GQbuDgaAmzaX62sB
         HHX3PozgYfr8gkGe+idaR3/8eIdpifnhJItQg+GcidpDWE7Z2hXDQdDTvpzXZc23Uyg6
         dFlhusVH3kKFcpcYhuibqeL/r7UKDxQ4zjc4t9zNOCHwSmUFrx2+x2usn9T/A78Glr49
         vvQHJXikwnx0h3YLTOhsJdEr8uukp0Q1J1zCXpxFvMNsRrtnuT4AJjMZ6qJ5rue4MwV/
         rOxH/rmaCXnpIILzb/SBneqKDsbHx0QkoMw7OnFLUJxAbevPTf+Q7PMxeSVwbDvYtxMR
         SLpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=c+FAv0iI1iBI2PxZWgTLwQRT67JlX7mwQM7ci/OpVBI=;
        fh=1/eYE+VQV5pS7YeJCOGMoewdgFL/bY7jPL6bH+ymQyI=;
        b=CNVxzauKA/1IKlD71gAA0T1pDp2TBlgMxmkYhe2Fv5JJvDVNaKbGISZOYZhjGMtGe0
         7E3+8YzdoZ4NJemxitb4gCuQUyaDDBksrdu8Kvpg1aZL4fcDa0Q1TEOobP41mMSYLwCO
         uSoJxVlBg/l+H6CNCYelBxrVxOmRw0kxNxspv27qlGG1YPJPkOFAvJloUj2y5CGWKRSA
         w7RM/DKAo2pk8xBfkojKMn21NkOk/AYwNNA/QSvJ5y0ShOcaXka97o3bkeESFdw7yFJR
         Kti2DHn0aR0iPY0yunWgzYaUu1p6NWFBeyzsmmAfjVmZJaJQzJdYM6S4Ah3d2MQlfmsl
         2L3Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=morbidrsa@gmail.com;
       dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746436451; x=1747041251; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c+FAv0iI1iBI2PxZWgTLwQRT67JlX7mwQM7ci/OpVBI=;
        b=j+h28BWnQPDSJ/5dJid3r67TxdHzR5HQkJKrSNTgH97xH0cA6TxufdHAOIMpYL8A51
         PvBwsUru8fo1X+b1pqLeI2nYGsYDwTGCYafBBGPW6NoN+4kNPx3OA6BNgJD4ZM96qClR
         HTiwb9pKvGmpGB0Ual81u6wzCZBALH56iBans=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746436451; x=1747041251;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+FAv0iI1iBI2PxZWgTLwQRT67JlX7mwQM7ci/OpVBI=;
        b=Z5n1PQKJwvkF7iBunSZ9t1kOVzjyKFKM/hsSGn7dtq+c4HMq0eJC7nPuS1eQFOe749
         mrZ609Y4DO15TczCJbC5cHbj56Ucy/km+ZMaMPzvt5V2JKqyapJ1/IJYO3aSOo72WR2Q
         OlNHSsNk3x+1AKhMW7WDB7GWrLCOEBj4wxxfWR45LtaDY2qZkHTHnx1u21+DMp2nU0BF
         W+KUjtGtbbTSEzjNuHGlxlH2pJV2M6Kt5mXopLo5HvbxAyZK+nX7b4w6nGzRvS3Sm+m+
         19uSsK827qfNL3VAh9idxkJR/OT4zBvShng4E+I/9ePFPTLRL/+UGWU+56PdpKFOIzC7
         nW1A==
X-Forwarded-Encrypted: i=2; AJvYcCUBdDLpRkeAQlS7/Z5JZkJAnHO+/fIPGHMy+wyMP/9YGcQXFA03lvxYPe5cobgKOM/dNoOnpg==@lfdr.de
X-Gm-Message-State: AOJu0Yxc0wytymrc4FJm2GKGD53q2AfnkJVvdL+qoOQ0H1vinc/KqKJc
	NMq6WJsOEKmuZXHk9RhlOewyUbFTIq4+0v1/fowJc0u1HLJOi5u0oqn/HWI9Yxk=
X-Google-Smtp-Source: AGHT+IHwMED5v32ViDC6knvzxEnKbFNWqktm2oyjzhFgKLIdhp+78iOCRff7wlCym5NTW4elN3SZVg==
X-Received: by 2002:a4a:ea81:0:b0:5fe:b3c2:29e2 with SMTP id 006d021491bc7-607e1f95db1mr8831235eaf.2.1746436451646;
        Mon, 05 May 2025 02:14:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEDzpBr+tGWTnAQ6KJ2CorY823cmzF5xjr3K7bUx3rynw==
Received: by 2002:a4a:a788:0:b0:603:f521:ff20 with SMTP id 006d021491bc7-607df3d1219ls972709eaf.1.-pod-prod-00-us;
 Mon, 05 May 2025 02:14:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXQf+j/rdq1zb/kKIqkF7HNe/EL8YeccpwK3qMwMENzRB1kJjw7DzKwgPQJVDtqoyd43qFYWtaU0M7uIA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1803:b0:3f9:176a:3958 with SMTP id 5614622812f47-4033603b546mr9461200b6e.11.1746436451090;
        Mon, 05 May 2025 02:14:11 -0700 (PDT)
Received: by 2002:a05:600c:5903:b0:43c:fe31:d01d with SMTP id 5b1f17b1804b1-441bbdf626dms5e9;
        Mon, 5 May 2025 01:36:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU5KQTwTdHVCU3Y83oDoyBrODTS2pwv+rI14WfN4DDL5msU1CWjdzSs/qmZrbajCcTETIZdMrBeQ6I9oQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:4304:b0:39f:601:85fb with SMTP id ffacd0b85a97d-3a09fd7015dmr4345253f8f.2.1746434188598;
        Mon, 05 May 2025 01:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746434188; cv=none;
        d=google.com; s=arc-20240605;
        b=bwUVKRAZ7DopR8+X9mUmDsXwYUOFhK/fM6STd2h1Zm0CA8vaKi4bzw0uKIO0zvMJaw
         izszOIrVuF0ydwhKoAbJXvzpYgkMnjgjp33Sg6ox8tl5liqCBUVFnt3lUycIxHh48jqk
         Dt41iiIUvsXO8WrtwQKHC4QeE6Q2UbVwAt/iijA2oPJOFrzBqI7CR1hvzEdpVtNlOK9u
         UJ27idllNF9pVjtet9T4F1J97UPMdajamvgK9+z3jRaz8aWvzWXbYYA0fIkxHOwWXIpD
         wc8mBSwbeLkMkfczY07uqWw86x5rIRrikask/K7ADujjhaIhzQZqqRW4LdS3vcwejSbP
         pGXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=UxxXXb4eNPbTRv6J/LOUqTZQUX6k1mlofRFRhluoY6g=;
        fh=fGB0MWTJW8FxJ8mG/5rxxFQ6NHVp4jVNkjJ7Wuou+iw=;
        b=ak3xRAyJelghPqFR8RKhA2M1mz81ZU8sfcQhqdmFUAfgr6A8I6vJ5WW8kF6ddQ9d8I
         vZsEPqQawPx0intSHDjt0ZEiM1YM2gMxDpKmI+Hv+hOINtN9Jw+oBtWKSGNZXliChIPh
         L+AKUD+G56gdpegnqAJtYRRfrPmePdimO7SDPq89TEXqY2/uC4Tw9Pk8eJ3MrHC9v+8Z
         SDM6LNkHxMHImWsQ/GoS3nENvHLS9biMB76pztAdoAOz3ezsBTMTjhfHOMFtfu8gaiNr
         TlGZchZwtQ/aZLpIfOR++8c2DxxBzH02yb1banHHpapL4dPsurjN5i/EkaCEgUrjsW3X
         t1sw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=morbidrsa@gmail.com;
       dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-3a0a07b02f1sor558063f8f.0.2025.05.05.01.36.28
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 05 May 2025 01:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVARNP3Xrmg4heTGUXsQvtJh9LA5G1Dl7tOF5mK9mcpK/NGuPuytwcyWym/q8X5nvijh3czPtmiRaiyAw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvYDxB3tQC8QDySAEyJuQJAx+KIcAy7ZYX3XasvWYXkRLShO/jiVAv0UrYn9Os
	BmJLYBvo5rilexqZNm4nKrVA4TcPikUobYeW2T+tJ6Kua7aW0JiORlKON+5uffBoMGCXmKjcQX2
	yIeUvGYYCAvKxgHwE6qfLumHj/Iyr+brhqQFT7FvJosJtCnoV2Bex2Ny5AvzMLPNJxCO4RMLUzQ
	iy98glnxGMHnrqtmdt0Lsmy30deTJDN9jSA67N/4YfLYKz8uI7aKzdGt/YbaCceeG6RaFk3l1Od
	5zoWI9WW0GkF1qGjq6YaBTkkcmb9zMuAociW0OtaweBhLKl6OOwVh0o99mYQHfy1pFo=
X-Received: by 2002:a05:6000:4011:b0:390:f394:6271 with SMTP id ffacd0b85a97d-3a09fdd45b8mr5103083f8f.43.1746434188069;
        Mon, 05 May 2025 01:36:28 -0700 (PDT)
Received: from fedora (p4ffae10f.dip0.t-ipconnect.de. [79.250.225.15])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae3b62sm9801729f8f.34.2025.05.05.01.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:36:27 -0700 (PDT)
Date: Mon, 5 May 2025 10:36:25 +0200
From: "'Johannes Thumshirn' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] Re: remove block layer bounce buffering
Message-ID: <aBh4iT4okfgVTQw5@fedora>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
X-Original-Sender: jth@kernel.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender)
 smtp.mailfrom=morbidrsa@gmail.com;       dmarc=fail (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Johannes Thumshirn <jth@kernel.org>
Reply-To: Johannes Thumshirn <jth@kernel.org>
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

With the comments on usb-storage addressed.

For whole series:
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aBh4iT4okfgVTQw5%40fedora.
