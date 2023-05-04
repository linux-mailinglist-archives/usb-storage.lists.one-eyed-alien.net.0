Return-Path: <usb-storage+bncBD6LRVPZ6YGRBVVJ2CRAMGQENFF323Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2536F76F6
	for <lists+usb-storage@lfdr.de>; Thu,  4 May 2023 22:26:00 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-751319bd93csf926071985a.0
        for <lists+usb-storage@lfdr.de>; Thu, 04 May 2023 13:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683231959; cv=pass;
        d=google.com; s=arc-20160816;
        b=enkxkJrqYwgJAadHK//aItnVOycgwj6paVjrcsXAzblUnK80n8pdCCkCzIFbU/grMC
         qjejaCDYwkIpi7iGduO4HNG5a91gUGXlpdlZ6MyixIlBa62fR8zwzA1tZ2Yycbf4t2lE
         2PI/KZH9uAt9mSFU++oEoGYPhPVohOeIoiSiaqxSStj4hLkLbK3V8tUIbHS6Uic/Upk0
         VeZdYHCW0wydQmxa7rBrEmCt/WlFnEGvQanvkMpBFQicybPlNZc0yZytx72NGP1+k2vV
         E7JoRUETa3UMI6lvqQX0VXJVQ/6oveqJyPRkzn85Wfz9Ru4b8s6Y1VLdZEJJh91hh0Hr
         41yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fo904CfTCsYwmBdZ1Tj1RQlMbrjpk/JBLJ/sa/JVAyI=;
        b=Iy8Bs6F6Fa+UUlZFeB73cI+pGMCgurAIfzViS7Vs0EwYOuVPKfNM6DmukYCG0U56/f
         Scf5wXXVLqn8GDPS+kbLy66VtRUywY5phmN+3uTUSRJA1TfWcvUIn82jN4XGKyktas4n
         RSO7JI5ir5P3bxW+ZWAeTvWBsh0fkz6zo+ppzE3EcwA6E26zOiJugPGZ3A2vJht0NrE5
         qwXQtotcQ8qvgAnNofcQcAbrPx/+nagF2gHr+IsODxycbBgLtunBRnZboS9RKmLy7aIL
         3S5em3xUrS8OjkFANwaUy4UMRj0U85Vhhh5E+u2df0Y8KTwU9GoUBWBSqgw9ma5v7A1S
         andQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683231959; x=1685823959;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fo904CfTCsYwmBdZ1Tj1RQlMbrjpk/JBLJ/sa/JVAyI=;
        b=Mx9X35yZdp+z+5qQbmDCHwAmyrgXxkDkDEVVlLrky9uj8/2NEnurG+hCa+HQahm7+U
         8EKONQtL2FI5M4FkoR0EgR4KkAgQp2R35u7DMDY0nNwhSAX1xFKRsaAcriOJJ6J4a7MZ
         n49iM66CQht7OnQ/h5TNKfaDnGd72t9l77yHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683231959; x=1685823959;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fo904CfTCsYwmBdZ1Tj1RQlMbrjpk/JBLJ/sa/JVAyI=;
        b=JMLB/cV669C798lUdzUsQJhU59wcotWcw8gxr8wWlCksAgjqcBI/FtY8/pifpmLdUj
         zcDRuQ8x16oV3l3I1Av+KGvVpp1xWmPiho3D4867go1Xkd7/ftftYWgFnwdCYJ1jcP6q
         l2sYB8T8G49Oyi1yG8zqV73eVb1zwio9i42Tolp1ZHE8d9vasRH0CGzH2Z6rGRKExWfu
         LoyzZKzIZYRCPcAtkUn0lI1G/+GqDzCKX8BV1uD0Ewym1+zhlb+KRnObnzDZJPQcTuna
         B4jQs83NWHMueDuGluFQU+96qIfGolTTPyfDwIkc2HmdsSxEgiBQVYOjE7AN9Jw0puB7
         reaA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDzyCBUQ1HGRmsW7ZuZFR8/sJI7ZPMELpikhXK14qWqPA1kgFnfr
	CtAAKAdrqWWdlaeXhnjwkJtyew==
X-Google-Smtp-Source: ACHHUZ6snl8JS9RH9qd1CvFkUWLLarM+zYzn6+gJMiz2/TyzSedBzYRGldoZ/Ks/CRRfBXcOk6jsHA==
X-Received: by 2002:a05:620a:2685:b0:74d:f736:a060 with SMTP id c5-20020a05620a268500b0074df736a060mr316241qkp.6.1683231958661;
        Thu, 04 May 2023 13:25:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:59cb:b0:3f0:a7ba:1a29 with SMTP id
 gc11-20020a05622a59cb00b003f0a7ba1a29ls18506588qtb.10.-pod-prod-gmail; Thu,
 04 May 2023 13:25:58 -0700 (PDT)
X-Received: by 2002:a05:622a:144e:b0:3ef:658c:6b33 with SMTP id v14-20020a05622a144e00b003ef658c6b33mr7982576qtx.43.1683231957944;
        Thu, 04 May 2023 13:25:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683231957; cv=none;
        d=google.com; s=arc-20160816;
        b=jauM+9XY5bsB11qfkPDqy/E+VtjXpCO2Vp3hfDB1i649c9yUjhBo9BVi/48SHU5o2M
         1OfXJSLvFqN/5SWlYfcnve1yQ9817HIGu1RniFo/mqjRIS39k/HwU9vu8gwNzu0Ralda
         hbCckYsSaQBdqCh/LdzkxhM10kw1e1Mrd2T9ybzlvx1t3V41uQiqs8AqonBGMlvm6lXp
         vXg5rXgd4I63aTwnBaEnog/Sx0LPR6ZPnp3HqgcWr2p2raTrsT4bBsZTFiUNXPIn6HN3
         Oa8IDlRn3HXbSCSqe6Uf0fdUQgkoEeP5OA7oiihNeSZBWqB4WvUHuhOjuAP4o+O2c06L
         hJ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=BUHltX4oaLyyC1NeLPI0+4UtOKYwdxPKfPPVGDblf5c=;
        b=I5FG2OBrwqN5TABQ2ORbWYvyexgCEe3Qc0ikz9UeT+hc5LDnDD228jBAkW5LjXYORi
         sQaqEe0DpAlgxIdYcBckwE3oDz3FgMp0oJq2nF7tEOs6t5Kl3oR/jy6JN0Igo9bsm6C0
         VQMkvoV1/R9ZPZq+w1wu/EDNI7NFXtJqlqOxHhIEketwUOxntTHA8ySy3ILjo32IGl8q
         2b4wCxOSdisMJpQm/IYZ0b7afEVB1L8Iicm7xVcjISuLBBaOyu8xn/J52t3vbMkrbRCV
         +vaSP5coLioNHXFTODXchsjAFL1cSy2IXRhc5c3tYXeGR7muroK5oXEUFAbJ1BHz8UFb
         BeQg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y9-20020a05622a004900b003f3640b48aasi1554086qtw.622.2023.05.04.13.25.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 04 May 2023 13:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 427485 invoked by uid 1000); 4 May 2023 16:25:57 -0400
Date: Thu, 4 May 2023 16:25:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Maxime Bizon <mbizon@freebox.fr>
Cc: Benjamin Block <bblock@linux.ibm.com>, Oliver Neukum <oneukum@suse.com>,
  Hannes Reinecke <hare@suse.de>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <a5a78513-58f2-4d74-a8c2-a48558345fda@rowland.harvard.edu>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
 <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
 <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
 <20230504085226.GC1032383@t480-pf1aa2c2.fritz.box>
 <83fac55c-4005-416d-aad7-04bcb3fcaea2@rowland.harvard.edu>
 <ZFPEB3lbEV90OJ91@sakura>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZFPEB3lbEV90OJ91@sakura>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
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

On Thu, May 04, 2023 at 04:41:11PM +0200, Maxime Bizon wrote:
>=20
> On Thursday 04 May 2023 =C3=A0 10:05:38 (-0400), Alan Stern wrote:
>=20
> > Maxime, would you like to submit a revised version of your patch?  The=
=20
> > key difference is that it should abort the currently executing command=
=20
> > (if there is one), regardless of whether the srb value matches.
>=20
> Yes
>=20
> before I do a format submission, is this what you have in mind ?

Yes, except that I would not make command_abort_any() a separate=20
routine.  Just put it inline in device_reset().

Alan Stern

>=20
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglu=
e.c
> index 8931df5a85fd..380b04273969 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -406,10 +406,8 @@ static DEF_SCSI_QCMD(queuecommand)
>   ***********************************************************************=
/
> =20
>  /* Command timeout and abort */
> -static int command_abort(struct scsi_cmnd *srb)
> +static int command_abort_matching(struct us_data *us, struct scsi_cmnd *=
srb_match)
>  {
> -	struct us_data *us =3D host_to_us(srb->device->host);
> -
>  	usb_stor_dbg(us, "%s called\n", __func__);
> =20
>  	/*
> @@ -418,10 +416,17 @@ static int command_abort(struct scsi_cmnd *srb)
>  	 */
>  	scsi_lock(us_to_host(us));
> =20
> -	/* Is this command still active? */
> -	if (us->srb !=3D srb) {
> +	/* is there any active pending command to abort ? */
> +	if (!us->srb) {
>  		scsi_unlock(us_to_host(us));
>  		usb_stor_dbg(us, "-- nothing to abort\n");
> +		return SUCCESS;
> +	}
> +
> +	/* Does the command match the passed srb if any ? */
> +	if (srb_match && us->srb !=3D srb_match) {
> +		scsi_unlock(us_to_host(us));
> +		usb_stor_dbg(us, "-- pending command mismatch\n");
>  		return FAILED;
>  	}
> =20
> @@ -444,6 +449,16 @@ static int command_abort(struct scsi_cmnd *srb)
>  	return SUCCESS;
>  }
> =20
> +static int command_abort_any(struct us_data *us)
> +{
> +	return command_abort_matching(us, NULL);
> +}
> +
> +static int command_abort(struct scsi_cmnd *srb)
> +{
> +	return command_abort_matching(host_to_us(srb->device->host), srb);
> +}
> +
>  /*
>   * This invokes the transport reset mechanism to reset the state of the
>   * device
> @@ -455,6 +470,8 @@ static int device_reset(struct scsi_cmnd *srb)
> =20
>  	usb_stor_dbg(us, "%s called\n", __func__);
> =20
> +	command_abort_any(us);
> +
>  	/* lock the device pointers and do the reset */
>  	mutex_lock(&(us->dev_mutex));
>  	result =3D us->transport_reset(us);
>=20
>=20
> --=20
> Maxime

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/a5a78513-58f2-4d74-a8c2-a48558345fda=
%40rowland.harvard.edu.
