Return-Path: <usb-storage+bncBDQKRH6BTEIBB3WH7SLQMGQEPTTCY3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C845994CE
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 07:47:26 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id f7-20020a1c6a07000000b003a60ede816csf1121039wmc.0
        for <lists+usb-storage@lfdr.de>; Thu, 18 Aug 2022 22:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660888046; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHEZ2jdcKzWAmybo3QoeA7ItAUT6DVY7Lx1IIn0IirAhkwgL+zqcQnBDRFz3fsmViv
         8teL2+rOCSFKgg45W4IcLdXxhFmzN8Tbf6SsoMtjuZYx1kq9m884FMJlKetjo9BnGNFE
         /fEHxBbSj0aLEKymGAZnI50DlcgrKl6WtdXJoytChQ7RuVY+i7135q6XfI7cv0adBTLR
         gmBPnKmH+VMV4uYT2N/ty2dx7GCvJYBv7YYK49bmX0uwA8ZS2v24pJojOxHrKLU6wT4Y
         3JqakqxSNY+x8L7jaffntclG411RlMTseIQlhRkpBG81QGi7+NDSiiEcE+ieM4dm/S/Y
         BgNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=vrJ4kjctGDjx95gJ7AwRYdGfQPvueewyJZX3whTeDKw=;
        b=iZiWR3Ojtd3yEkzKn1zGJ7x32HK3WvSTQB6wZU3J1zIiKuVF7WXvJzTOXbCgQoBp10
         /dR0OSLt4rLbv7HCyhj9FYQIk/ATIxpTgFT7ESdb33uMA7T7Olj5qROCkEP/SJstV96f
         HDLwrmf63znSNAOtjVVS7N2m4rtVOKNf/w+8w/P+6WB2xQhrWSOUu0EDiMUV127ruATP
         gUJtiu/uJ6lfAw1LVHFkyeQ1zpajGqEOI4z1pTTnRpZ8i5ZBFqlEY+t2gSiwrYSOGunJ
         c5iDaEhZpeObw9rPpoy7Wk5KRVa4Ks2uF0LneCFlmwLpDHZEXRt9W0D8NDhkPUDnXeIe
         Z1pg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=GNEqAbW2;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :sender:from:to:cc;
        bh=vrJ4kjctGDjx95gJ7AwRYdGfQPvueewyJZX3whTeDKw=;
        b=AsN7g7+h+W2ML8L5zFBpjtehj1obFi+1D8IlwslDKN3+Ro+RKZF+VgIu1pVZfVaMM9
         B+7TEVQLAPN7L1wl4y8GIWNBHB5HZvkfGoPIgZ5Vw+BYhutWeiiftNiQ9Dmtp0l8DkxK
         sYZoFrcfaUKRt4b4CMN6EJ39yVbIrLvmrEhjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:sender:from
         :to:cc;
        bh=vrJ4kjctGDjx95gJ7AwRYdGfQPvueewyJZX3whTeDKw=;
        b=vTYWO2fnGeYY0ZH9W3SrbszYMIM0VdCQdmdSIZSZXu56FUCNDksu1K22dv9spg1tnt
         QaBXV2AmtmFdRWKpt5aXFpN9+qenfvwfSofWsQE4l1DlP2j0MnOKLpcRY3qnAUyIhLPw
         SILbNtUB9f1pLAZ0nb98WCzevdwwQICh9mGw6as0gf/1mIC51gJ57Nh5rzfx0guVw+2+
         v0hetEFcl7rf76yF/+q8Ut8gUqAiU9VOeAJC842UMuxaJ7dRoqfcNENg+BY8m6O7PdF8
         DU+nbSjN+O7bXibbmNFEJ9zTgFnz5aq6tEtiyHkvu21SGoFq89Zi/h5sFsG8OTf4e2TG
         92XA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1wxL3/ZrTLDhV1lZcmfEiWz99gvctVOl2scG9dcfhgUHMLg+Bn
	bsVNyLGH1WDdBgJ+LnfltFbPWw==
X-Google-Smtp-Source: AA6agR4QGqCl0Qikdk/Pp9xU0YT5srRaFHRES0hmqsqS18COIQ0Sit8Kgj3qABDGV5da/qs+WyWFQg==
X-Received: by 2002:adf:fa45:0:b0:225:2619:ab93 with SMTP id y5-20020adffa45000000b002252619ab93mr3147708wrr.563.1660888046557;
        Thu, 18 Aug 2022 22:47:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:22d:b0:221:24a2:5cf with SMTP id
 l13-20020a056000022d00b0022124a205cfls3865878wrz.0.-pod-prod-gmail; Thu, 18
 Aug 2022 22:47:24 -0700 (PDT)
X-Received: by 2002:adf:fa8a:0:b0:225:20ab:642b with SMTP id h10-20020adffa8a000000b0022520ab642bmr3337829wrr.615.1660888044540;
        Thu, 18 Aug 2022 22:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660888044; cv=none;
        d=google.com; s=arc-20160816;
        b=MNs3fXZJDjpZTt6JzdRdC+PHA88E8IyznFZIVGaYa9TcHyoAkj9V6v/rNJaPI8GtFW
         sxg0lrBTL0v/652KcDTy87E7H1zD0NBW9yHlYn5wPMhAZQKtsWoYQcEy7vtN6ORJWa28
         opY6eWsqWPFaLp8MIBcNBukD9xgWsMg1yD0moraRKdTaxvB+yetvIaJ5tIGsNpIx0uJm
         OKeZ/pJDGt7Os99c31FMMjWmsINShhg3YcFPq1DNZLCPQ06zEDakSuLxpsb4fJAZYtWB
         h0owvX/LkAoABL5UfbrqHe1h58jMkM7J9ASR/KxMcEWEaAfQKk5/0Uw7iUMCc9IuP4mH
         YUlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mYzsYOnd9HTbS+HybTBR1n9OwsXyRA+6ak5JoTDgrpg=;
        b=P8ErJrdfXJLFL+o/rq+4uRY+saDwGkRwGTjyZSbjqYyuULwRbPh0LisE2Ad48yNPpD
         Q/gs2JO98rHDMS7IPtJb40ofv6g+yTptryNbGXXUdwuBC1pP42ha1Ug573x2JHRY3tGQ
         MTp6u2pm4cUASY7EtOnPY2mx8fi7MbdvTse9CwBcmXsRi/mPoDrN692mQdd7dXF3iA1Q
         ZaphHsafsf+p7mhp+Jeync13nDMiCXHlNjfWtI0OfBo85gZyvrA7sKn4aJJYA9jXiESF
         9WWaC58enQwShdd3wrpvOjTi3wa264Ru6XTsI7tjaaAsM7hEPSBPnl85AAcY/vF7y/a+
         RJnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b=GNEqAbW2;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
Received: from mail.zeus03.de (www.zeus03.de. [194.117.254.33])
        by mx.google.com with ESMTPS id g11-20020a05600c4ecb00b003a6030c003asi2078328wmq.16.2022.08.18.22.47.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 22:47:24 -0700 (PDT)
Received-SPF: neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) client-ip=194.117.254.33;
Received: (qmail 4113007 invoked from network); 19 Aug 2022 07:47:23 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 Aug 2022 07:47:23 +0200
X-UD-Smtp-Session: l3s3148p1@p3HLoZHmuO0ucrTL
Date: Fri, 19 Aug 2022 07:47:22 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
Message-ID: <Yv8j6ikXWfcjA6SW@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
 <edda5842-fa82-dfb0-b4b2-14a83673ea6c@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rf03PIGfQ5zrzZGP"
Content-Disposition: inline
In-Reply-To: <edda5842-fa82-dfb0-b4b2-14a83673ea6c@linuxfoundation.org>
X-Original-Sender: wsa+renesas@sang-engineering.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@sang-engineering.com header.s=k1 header.b=GNEqAbW2;
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied
 by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
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


--rf03PIGfQ5zrzZGP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Shuah,

> Please elaborate and summarize why this change makses sense in the
> commit log? It will be easier for reviewers - saves time checking
> the link.

Okay. Will do this to all follow-ups / resends of this series.

> Acked-by: Shuah Khan <skhan@linuxfoundation.org>

Thanks,

   Wolfram

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yv8j6ikXWfcjA6SW%40shikoro.

--rf03PIGfQ5zrzZGP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmL/I+oACgkQFA3kzBSg
KbaWVRAAiXuicjZTlCMgo5+Uzcpwiw2HF1j08x1pciUQP+s76e0Rq/EUdBC7qFm1
tTUa/ZtJsGP6+LFku3dvs5UHx83b/F/5yHio3V3PZJEVc10ri/Pw1GadCV2ATYDk
9ipgQ6hzBmmmEu6ruGgU/LgN3am9ZHHdjlDULDtKk9Pr4wwo1r92Hym3x/b1/X14
AbEoLl/tWW27olmqTpFHnPZ53NRdwXN2weyhNLqo754klKgJE7M8F0lRAegKUvmE
WnJb/pZJF3CkdvRNFXBNgEjAu7iN5BDAsge/ul24Ao0ocu5xVVJ5OzO4BNepB33c
9FCB9K/6T62C2NTCbugfFvmeFfgfhjwWLUdwTGYAplZdHidKlDVXfve191Ph4l+B
7AAMtVbzRpD1myUb2/hznYp5qLYNjdleyQzO17Sd+EdLLYLm63kPc29uFd8p3G87
YKFdmHUTfPPL4NvHPQPSacR2uXprIXxjRDEWf5v/RCxjzoFppZCEhm1O3rBnCD/V
/HEjMrVggaNP4fkPrvpXyE7D3nWpcsA9EhvInjWfiLTQONBYnz3B1TYUpjpSE4Ad
IaFU4XuZdT7HuWOhGfy8DnusMz0ZZYLFkinwrdP7PawN/F3l3Ay2jN4NaAjtvpVT
73GesVOy+B2VmeLznHQqMBf87tSyR4P57QeBhD2MrAMpaRxVFJ0=
=QFtp
-----END PGP SIGNATURE-----

--rf03PIGfQ5zrzZGP--
