
package:
	cd charts/statping && helm package .
	helm repo index ./charts --merge index.yaml
	rm -rf charts/statping/*.tgz
