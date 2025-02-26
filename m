Return-Path: <usb-storage+bncBD64ZMV5YYBRBD4S7W6QMGQESQTYR3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3CA46743
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 18:02:09 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-471f08bd0bdsf147660191cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 09:02:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740589328; cv=pass;
        d=google.com; s=arc-20240605;
        b=RhofC5wHhIbB0UQTnEuci53Re9cZ0+kuEE9H/bFLKm/T1BjPpGxEm1YFAdhdnARhYP
         ZRJT94prhn3c3g/pprAPZhttD1I8SllJ15c6yK0rPhA1l46yoHsyCPko5PByPFDxvmCs
         P2/7NzIZWM9b5OrJzS728NQZ29lKL4wvS5oRRAFmMFFI0h8mjSU/9slhqpiPjtNilrh3
         xwbpxGeSo/9DYLYzNzr8VKZW/afdEsyaK553ZMc/N6ibsLcahgAvLbnMKM/7kMmDvW4l
         VzkVlxAE9dL1QM8M5ZhlJtR608GE7eqW7XzsPdKkaM7KyshzLuxCERMqXQQLHgUkT8pz
         RhSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=CatmknASMHiDlAaKodKZkuAzKTjJDEZaOEFfp5p08IU=;
        fh=dfh+ClTGUbxzFe4wr4SMRHPd7V7Xb1A1HPEe3xKvmGM=;
        b=cdouatqQIRqUutWI1JsAsNirGfHSWdWOsRIk0mfSn/Tar8D0XwVrVgqUAMVREWFJRq
         JQ5SRFlxAWaizb7hrkOE0+CavMxWVk+z0mzSjVsMzGlz6UXeIZVMx8GSToHN9UTVvZU8
         DE6Qk28D7jl87mI50liVb6eC5CKVOqIwSrRoFN6xGnI+1MLIotsemfzP4YYNIGwxiugi
         HZmUOt2YeRLx0ZFYDbMUh7MIko4Lom8O4+MXvYeHKuBPAP1spvIjqvnW9BUUtOBuYqnr
         1lOA0R7rZogjFKPlTDyawFQX7y5UBzpV9SsoZLtJOdUj3JbCNMErLvjFWr/BJ1v7yzTX
         OAcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=TvUIy4ta;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740589328; x=1741194128; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CatmknASMHiDlAaKodKZkuAzKTjJDEZaOEFfp5p08IU=;
        b=gCTf/P3xuRrEGiDMe65AY8Sca7DX9ClpBj9PcZK6FVrFgOLQ2sIOMUv3hFQumwrjug
         vZyI3tLlxaIRiVaDqJZDwiJY2LJ6E+uODZpoeLf0DvU8T8+kD/5c5i1b7RKacy+JoHst
         e16lH43widiMZhHXaxsLaL8D+znGx9xEyIsOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740589328; x=1741194128;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CatmknASMHiDlAaKodKZkuAzKTjJDEZaOEFfp5p08IU=;
        b=w8OFLv2ivu4kxktf+PeblomsguRTbBcGsak6ucT79TVVHp3ozdt2NhSnIlqPQsrGWU
         IboB5rUHlclOR/xzi/NC1LI/HNf8CkLJ2PIx/s6U51s3dbWhQ4V0hCFgExYEVgHvFpim
         nx1iJXmn1GG1JeCK9Bn5IPpzBPvWPe7K1/0F7n/ePN6eUqG/n6TSn0r96g8FnLNYYCzK
         TE1bEzILBkQKGCphwm3MBSDJz91hQa2rQrvxGgNm7ky8I50Nti/X0z8XJGwvWesY2oTO
         LioLrsEyWp/WyV4uTm1TxGm94wJoiaYwRf7y+rmg1izxXN+g7lsMjTzoAXhr5v1fkDYp
         Pmtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUcAK2CkSGDeIK4una/ML6UozM6ruePvGtNBh+Ktz/gtKZvNe5yk+5tNq4tU+oV84e+xcl89w==@lfdr.de
X-Gm-Message-State: AOJu0Yz58p1aDbP0u10XQazjVqgsXdwmSEigE/3V1g22+FWA6kpak/hU
	Ugpcz13eq3nP86O1lAr+OOE02kL3WAgaYpVI07djDShG/vkkANtOzYFXYR/mZiY=
X-Google-Smtp-Source: AGHT+IH5QK7gJXXFptDQ9U4PI4iXKKJRPBZ8gY88UqBXGWHa1LX+QS1/dWWwWNacO+or3GKds10ptw==
X-Received: by 2002:ac8:5749:0:b0:472:161a:84c0 with SMTP id d75a77b69052e-472228c817bmr322117291cf.20.1740589328181;
        Wed, 26 Feb 2025 09:02:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGv7+Y0c4KSm1XQczZCH9kiTo0yGA5Pcg3IBZ3p0FBHVw==
Received: by 2002:ac8:40d1:0:b0:471:ede4:803d with SMTP id d75a77b69052e-473ced145a7ls1549691cf.0.-pod-prod-01-us;
 Wed, 26 Feb 2025 09:02:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVhWY9Xmkoiuy5W5yDLoL4YiLptauAUIc0yIyuTe2t2HXY8BocBEhFrkiWi59Lskde3wKLtd8AB56tASw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1995:b0:7c0:ba36:e656 with SMTP id af79cd13be357-7c0cef4851dmr3621527785a.40.1740589327020;
        Wed, 26 Feb 2025 09:02:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740589327; cv=none;
        d=google.com; s=arc-20240605;
        b=dw4FSa5oa5tWOwZ8feBE/iM00y6Dchi68G94eZ2CH3NVMqfFELR0bSSOOZBsYoheIt
         SZ1Ug4R52mbICkpKKgP7qIQeYnHcB3CBF1jfaJFLMrj26apT4hyU7pI+iu8qQMVeF0yy
         gHruxqbsSP+rRhF8evfGNwWMJ3cFqyNEDy1copUT8ohPa1dthfk3AStZo3yxur0QCQRW
         V/YjjMoDcpHnpkLSYJ5OSIZ5UuucRyV9lKQJfR0PDS7bIk6poMv7uQTBltjt0Dwkgk6E
         uBFyybuwfpaAuS1TPobkj9m+xvIaKxMcOcXjiFeOy7ZRXK4Zf3vI86wrF10WiUZFN5nP
         3pYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=6gDpJWiIqmqRiAR05CBdJHy9M1E970vBLzOxyspapRA=;
        fh=+WWPuEYZWynHmjds2ujyCusxtvOhwiK8549I2wYnWFY=;
        b=jZUlwZX3aEzQL0VNIuJR6TdaDO9Hxp0dM0KxzyspuEyUTyIzDetyG7xPkwcY3XDXPH
         UbE/InE93RQjDhMZiQyrbzfbU1kE3s2qhuZ6YXwfkz5Xi7hJXE6qYEM2/h+HaKFFXzOs
         f32VeRUQwyRDGbqzwbpMqeIUSgPBf5UDY//y2iSSZOtfWBjhe6Xhj4HI7kZT4y4q/W11
         cLJ6jWuz5WJTPqmtcZCzspPfzHlRMopD7aAmjFGmYd1OcQXfjxGMGyHSeuHgNlQ9u7uG
         4jpa5tA7YTAVkELN4kvCJ5xcw3v7olstUwLvc7mNqv3kBP5iQ1rGhbfK985ANTyKEPfl
         0Q/A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=TvUIy4ta;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7c23c25a527sor409213085a.9.2025.02.26.09.02.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 26 Feb 2025 09:02:06 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWfdqFlWY1evq/5XogNGJzmmFpfULknoX0mFqdMjqe4pohq4GUnxiC2pWXS7QSOW62jwlzZmZsTl7Abiw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct0hWvZpNDd30rU5fgEaw7A1rtAL7FCLVOEFdbovqhUIKjCoNmkeGlchzxxOCf
	7vFeGMv3ri8vlJzIUWJN6bRyHLm58O3AZLTTP2dMyLh7U2yiT/+2YGQmDwSZWVOIxJ3Trfx9oDc
	jmr1s2VoJMinNVZytTgve0Z6tmfv9snxIL0Bz0yFW+lMKWBbHX0Ljeg2XGorRXbITtoUu17IjC0
	uhHW3nCfJeGqqX7RiSEQ4bgEbcRVVTpBeO1oTL9FC1SZynn3vdw63DBfCUKkfl+5Em7uMj7uHH5
	9i4AtUAJWkLkyAlrABBnlRKGiYYT0o2V0kUwKphwhjqsceMtvi+/BAo3fvmQoUR/z70tAF9d9tt
	6AWxCIEu4ud9Ftq6kcHE=
X-Received: by 2002:a05:620a:1b8f:b0:7c0:b368:5d8b with SMTP id af79cd13be357-7c0ceee5f8fmr2639224985a.11.1740589326574;
        Wed, 26 Feb 2025 09:02:06 -0800 (PST)
Received: from rowland.harvard.edu (nat-65-112-8-24.harvard-secure.wrls.harvard.edu. [65.112.8.24])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c23c34f633sm269044585a.117.2025.02.26.09.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 09:02:05 -0800 (PST)
Date: Wed, 26 Feb 2025 12:02:02 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: j.ne@posteo.net
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2 0/9] usb: storage: Mark various arrays as const
Message-ID: <ea5c2735-cfb3-4e5f-a7f9-40d4493bd05a@rowland.harvard.edu>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=TvUIy4ta;
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

On Wed, Feb 26, 2025 at 03:17:22PM +0100, 'Jonathan Neusch=C3=A4fer via B4 =
Relay' via USB Mass Storage on Linux wrote:
> While reading code, I noticed that some arrays in USB mass storage
> drivers are declared static but not const, even though they are not
> modified. This patchset marks them const.
>=20
> All patches were compile-tested.
>=20
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
> ---
> Changes in v2:
> - Add new patches 2-9
> - Use consistent authorship information
> - Link to v1: https://lore.kernel.org/r/20250225-misc-const-v1-1-121ff3b8=
6437@posteo.net

The patches themselves look good, but I still think you should explain=20
in the patch descriptions why declaring these arrays const is worth=20
doing.

Merely saying _what_ you are doing isn't good enough.  We can tell what=20
a patch does just by reading it.  What we can't always tell is _why_ you=20
would want to do it.  That is what needs to be explained.

The explanation doesn't have to be terribly long or detailed, but you=20
should not omit it entirely.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/ea5c2735-cfb3-4e5f-a7f9-40d4493bd05a%40rowland.=
harvard.edu.
